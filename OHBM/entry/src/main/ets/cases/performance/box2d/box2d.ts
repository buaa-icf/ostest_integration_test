/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import { B2CircleShape, B2PolygonShape, B2Shape, B2ShapeType } from './Collision/Shapes/b2Shape';
import { addEqual, B2Vec2 } from './Common/b2Math';
import { B2BodyDef, B2BodyType } from './Dynamics/b2Body';
import { B2FixtureDef } from './Dynamics/b2Fixture';
import { B2World } from './Dynamics/b2World';
import { ThreadWorkerGlobalScope } from '@kit.ArkTS';
import { WorkerMessage } from '../../BenchmarkMeasure';
// 首先，确保导入了所有需要的接触类型类
import {
  B2CircleContact,
  B2Contact,
  B2EdgeAndCircleContact,
  B2EdgeAndPolygonContact,
  B2PolygonAndCircleContact,
  B2PolygonContact
} from './Dynamics/Contacts/b2Contact';

// 然后，在初始化物理世界时，注册所有接触类型
function initializeContactTypes() {
  // 注册多边形与多边形接触
  B2Contact.addType(B2PolygonContact.create, B2PolygonContact.destroy, B2ShapeType.POLYGON, B2ShapeType.POLYGON);
  // 注册圆形与圆形接触
  B2Contact.addType(B2CircleContact.create, B2CircleContact.destroy, B2ShapeType.CIRCLE, B2ShapeType.CIRCLE);
  // 注册边缘与圆形接触
  B2Contact.addType(B2EdgeAndCircleContact.create, B2EdgeAndCircleContact.destroy, B2ShapeType.EDGE,
    B2ShapeType.CIRCLE);
  // 注册边缘与多边形接触
  B2Contact.addType(B2EdgeAndPolygonContact.create, B2EdgeAndPolygonContact.destroy, B2ShapeType.EDGE,
    B2ShapeType.POLYGON);
  // 注册多边形与圆形接触
  B2Contact.addType(B2PolygonAndCircleContact.create, B2PolygonAndCircleContact.destroy, B2ShapeType.POLYGON,
    B2ShapeType.CIRCLE);
}

function runBox2D(workerPort: ThreadWorkerGlobalScope): void {
  let loop20: number = 600;
  // 在物理世界初始化时调用此函数
  initializeContactTypes();
  let world = makeNewWorld();
  const velocityIterations = 10;
  const positionIterations = 5;
  let message = new WorkerMessage('Box2d', -1, 0, 0, 0, 0, 0, 0, 0)
  workerPort.postMessage(message);
  drawWorld(world, workerPort)
  for (let i = 0; i < loop20; i++) {
    world.step(1 / 60, velocityIterations, positionIterations);
    let message = new WorkerMessage('Box2d', -1, 0, 0, 0, 0, 0, 0, 0)
    workerPort.postMessage(message);
    drawWorld(world, workerPort)
  }
}

function drawWorld(world: B2World, workerPort: ThreadWorkerGlobalScope) {
  let bodies = world.getBodyList();
  let i = 0
  while (bodies) {
    i++
    const body = bodies;
    let fixtures = body.getFixtureList();
    let j = 0
    while (fixtures) {
      j++
      const fixture = fixtures;
      const shape = fixture.shape;
      const pos = body.position;
      const angle = body.angle;
      drawShape(shape, pos, angle, workerPort);
      fixtures = fixtures.getNext();
    }
    console.log('body:' + i.toString() + ' fixture: ' + j.toString())
    bodies = bodies.getNext();
  }
}

function drawShape(shape: B2Shape, position: B2Vec2, angle: number, workerPort: ThreadWorkerGlobalScope) {
  let message = new WorkerMessage('Box2d', 2, 0, 0, position.x, position.y, 0, 0, 0)
  switch (shape.type()) {
    case B2ShapeType.POLYGON:
      let vertices = (shape as B2PolygonShape).mVertices
      let x: number[] = []
      let y: number[] = []
      for (let index = 0; index < vertices.count; index++) {
        x.push(vertices.get(index).x)
        y.push(vertices.get(index).y)
      }
      message.vertices_x = x
      message.vertices_y = y
      workerPort.postMessage(message);
      break;
    case B2ShapeType.CIRCLE:
      message.type = 3
      message.radius = (shape as B2CircleShape).radius
      workerPort.postMessage(message);
      break;
  // 其他形状...
  }
}

/*
 * @Setup
 */
function makeNewWorld(): B2World {
  let density: number = 1.0;
  let gravityY: number = -10.0;
  let zero: number = 0.0;
  let gravity = new B2Vec2(zero, gravityY);
  let world = new B2World(gravity);

  //地面
  let edgeV1X: number = -100.0;
  let edgeV2X: number = 300.0;
  let shape = new B2PolygonShape();
  shape.setAsEdge(new B2Vec2(edgeV1X, zero), new B2Vec2(edgeV2X, zero));
  shape.radius = 0;
  let fdg = new B2FixtureDef();
  fdg.density = density;
  fdg.shape = shape;
  fdg.restitution = 0.8;
  fdg.friction = 0.5;
  let bdg = new B2BodyDef();
  bdg.type = B2BodyType.STATICBODY;
  bdg.allowSleep = false;
  let ground = world.createBody(bdg);
  ground.createFixture(fdg);

  // 创建球体
  const ballShape = new B2CircleShape();
  ballShape.radius = 5;
  const ballFd = new B2FixtureDef();
  ballFd.shape = ballShape;
  ballFd.density = density;
  ballFd.restitution = 0.8;
  const ballBd = new B2BodyDef();
  ballBd.type = B2BodyType.DYNAMICBODY;
  ballBd.position.set(200, 400);
  ballBd.allowSleep = false;
  let ballBody = world.createBody(ballBd);
  ballBody.createFixture(ballFd);

  return world;
}

export { runBox2D }