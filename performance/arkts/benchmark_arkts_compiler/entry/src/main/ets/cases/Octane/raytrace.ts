/*
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import { BenchmarkRun } from "../BenchmarkMeasure";


class Color {
  red: number;
  green: number;
  blue: number;

  constructor (r?: number, g?: number, b?: number) {
      this.red = r?r:0.0;
      this.green = g?g:0.0;
      this.blue = b?b:0.0;
  }
  
  static add (c1: Color, c2: Color): Color{
      const result:Color = new Color(0,0,0);
      result.red = c1.red + c2.red;
      result.green = c1.green + c2.green;
      result.blue = c1.blue + c2.blue;
      return result;
  }
  
  static addScalar(c1: Color, s: number):Color {
      const result:Color = new Color(0,0,0);
      result.red = c1.red + s;
      result.green = c1.green + s;
      result.blue = c1.blue + s;
      result.limit();
      return result;
  }
  
  static subtract(c1: Color, c2: Color):Color {
      const result = new Color(0,0,0);
      result.red = c1.red - c2.red;
      result.green = c1.green - c2.green;
      result.blue = c1.blue - c2.blue;
      return result;
  }
  
  static multiply(c1: Color, c2: Color):Color {
      const result = new Color(0,0,0);
      result.red = c1.red * c2.red;
      result.green = c1.green * c2.green;
      result.blue = c1.blue * c2.blue;
      return result;
  }
  
  static multiplyScalar(c1: Color, f: number):Color {
      const result = new Color(0,0,0);
      result.red = c1.red * f;
      result.green = c1.green * f;
      result.blue = c1.blue * f;
      return result;
  }
  
  static divideFactor(c1: Color, f: number):Color {
      const result:Color = new Color(0,0,0);
      result.red = c1.red / f;
      result.green = c1.green / f;
      result.blue = c1.blue / f;
       return result;
  }
  
  limit():void {
      this.red = (this.red > 0.0) ? ( (this.red > 1.0) ? 1.0 : this.red ) : 0.0;
      this.green = (this.green > 0.0) ? ( (this.green > 1.0) ? 1.0 : this.green ) : 0.0;
      this.blue = (this.blue > 0.0) ? ( (this.blue > 1.0) ? 1.0 : this.blue ) : 0.0;
  }
  
  distance(color: Color):number {
      return Math.abs(this.red - color.red) + Math.abs(this.green - color.green) + Math.abs(this.blue - color.blue);
  }


  static blend(c1: Color, c2: Color, w: number) {
      let result:Color = new Color(0,0,0);
      result = Color.add(Color.multiplyScalar(c1, 1 - w), Color.multiplyScalar(c2, w));
      return result;
  }
  
  brightness():number {
      const r:number = Math.floor(this.red*255);
      const g:number = Math.floor(this.green*255);
      const b:number = Math.floor(this.blue*255);
      return (r * 77 + g * 150 + b * 29) >> 8;
  }
  toString() {
      const r:number = Math.floor(this.red*255);
      const g:number = Math.floor(this.green*255);
      const b:number = Math.floor(this.blue*255);
      return "rgb("+ r +","+ g +","+ b +")";
  }
}


class Vector {
  x: number;
  y: number;
  z: number;
  
  constructor(x?: number, y?: number, z?: number) {
      this.x = (x ? x : 0);
      this.y = (y ? y : 0);
      this.z = (z ? z : 0);
  }
  
  copy(vector: Vector):void {
      this.x = vector.x;
      this.y = vector.y;
      this.z = vector.z;
  }
  
  normalize():Vector {
      const m:number = this.magnitude();
      return new Vector(this.x / m, this.y / m, this.z / m);
  }
  
  magnitude():number {
      return Math.sqrt((this.x * this.x) + (this.y * this.y) + (this.z * this.z));
  }
  
  cross(w: Vector):Vector {
      return new Vector(
          -this.z * w.y + this.y * w.z,
          this.z * w.x - this.x * w.z,
          -this.y * w.x + this.x * w.y
      );
  }

  dot(w: Vector):number {
      return this.x * w.x + this.y * w.y + this.z * w.z;
  }

  multiplyScalar(w: number):Vector {
      return new Vector(this.x * w, this.y * w, this.z * w);
  }

  subtract(w: Vector):Vector {
      return new Vector(this.x - w.x, this.y - w.y, this.z - w.z);
  }

  add(w: Vector):Vector {
      return new Vector(w.x + this.x, w.y + this.y, w.z + this.z);
  }
  
  static add(v: Vector, w: Vector):Vector {
      return new Vector(w.x + v.x, w.y + v.y, w.z + v.z);
  }
  
  static subtract(v: Vector, w: Vector):Vector {
      return new Vector(v.x - w.x, v.y - w.y, v.z - w.z);
  }

  static multiplyVector(v: Vector, w: Vector):Vector {
      return new Vector(v.x * w.x, v.y * w.y, v.z * w.z);
  }
  
  static multiplyScalar(v: Vector, w: number):Vector {
      return new Vector(v.x * w, v.y * w, v.z * w);
  }
  
  toString():string {
      return 'Vector [' + this.x + ',' + this.y + ',' + this.z + ']';
  }
}

class Light {
  position: Vector;
  color: Color;
  intensity: number;
  constructor(pos: Vector, color: Color, intensity?: number) {
      this.position = pos;
      this.color = color;
      this.intensity = intensity ? intensity : 10.0;
  }
  toString(): string {
      return 'Light [' + this.position.x + ',' + this.position.y + ',' + this.position.z + ']';
  }
}

class Ray {
  position: Vector;
  direction: Vector;
  
  constructor(pos: Vector, dir: Vector) {
      this.position = pos;
      this.direction = dir;
  }
   toString(): string {
      return 'Ray [' + this.position + ',' + this.direction + ']';
  }
}

class Scene {
  camera: Camera;
  shapes: Shape[];
  lights: Light[];
  background: Background;
  constructor() {
      this.camera = new Camera(
          new Vector(0,0,-5),
          new Vector(0,0,1),
          new Vector(0,1,0)
      );
      this.shapes = [];
      this.lights = [];
      this.background = new Background(new Color(0,0,0.5), 0.2);
  }
}

abstract class BaseMaterial {
  gloss: number;
  transparency: number;
  reflection: number;
  refraction: number;
  hasTexture: boolean;
  abstract getColor(u: number, v: number): Color;

  constructor() {
      this.gloss = 2.0;
      this.transparency = 0.0;
      this.reflection = 0.0;
      this.refraction = 0.50;
      this.hasTexture = false;
  }

  wrapUp(t: number): number {
      t = t % 2.0;
      if (t < -1) t += 2.0;
      if (t >= 1) t -= 2.0;
      return t;
  }

  toString() {
      return 'Material [gloss=' + this.gloss + ', transparency=' + this.transparency + ', hasTexture=' + this.hasTexture + ']';
  }
}

class Solid extends BaseMaterial {
  color: Color;
  constructor(color: Color, reflection: number, refraction: number, transparency: number, gloss: number) {
      super();
      this.color = color;
      this.reflection = reflection;
      this.transparency = transparency;
      this.gloss = gloss;
      this.hasTexture = false;
  }

  getColor(u: number, v: number):Color {
      return this.color;
  }

  toString() {
      return 'SolidMaterial [gloss=' + this.gloss + ', transparency=' + this.transparency + ', hasTexture=' + this.hasTexture + ']';
  }
}

class Chessboard extends BaseMaterial {
  colorEven: Color;
  colorOdd: Color;
  density: number;
  
  constructor(colorEven: Color, colorOdd:Color, reflection: number, transparency: number, gloss: number, density: number) {
      super();
      this.colorEven = colorEven;
      this.colorOdd = colorOdd;
      this.reflection = reflection;
      this.transparency = transparency;
      this.gloss = gloss;
      this.density = density;
      this.hasTexture = true;
  }
  
  getColor(u: number, v: number):Color {
      let t:number = this.wrapUp(u * this.density) * this.wrapUp(v * this.density);
      if (t < 0.0)
          return this.colorEven;
      else
          return this.colorOdd;
  }
  toString() {
      return 'ChessMaterial [gloss=' + this.gloss + ', transparency=' + this.transparency + ', hasTexture=' + this.hasTexture + ']';
  }
}



abstract class Shape{
  position: Vector;
  material: BaseMaterial;
  constructor(position:Vector,material: BaseMaterial){
      this.position = position;
      this.material = material;
  }
  abstract intersect(ray: Ray):IntersectionInfo;
}


class Sphere extends Shape{
  radius: number;

  constructor(pos: Vector, radius: number, material: BaseMaterial) {
      super(pos,material)
      this.radius = radius;
  }

  intersect(ray: Ray):IntersectionInfo {
      const info:IntersectionInfo = new IntersectionInfo();
      info.shape = this;
      const dst:Vector = Vector.subtract(ray.position, this.position);
      const B:number = dst.dot(ray.direction);
      const C:number = dst.dot(dst) - (this.radius * this.radius);
      const D:number = (B * B) - C;
      if (D > 0) {
          info.isHit = true;
          info.distance = (-B) - Math.sqrt(D);
          info.position = Vector.add(
              ray.position,
              Vector.multiplyScalar(
                  ray.direction,
                  info.distance
              )
          );
          info.normal = Vector.subtract(
              info.position,
              this.position
          ).normalize();
          info.color = this.material.getColor(0, 0);
      } else {
          info.isHit = false;
      }
      return info;
  }
  toString() {
      return 'Sphere [position=' + this.position + ', radius=' + this.radius + ']';
  }
}

class Plane extends Shape{
  d: number;
  
  constructor(pos: Vector, d: number, material: BaseMaterial) {
      super(pos,material)
      this.d = d;
  }
  
  intersect(ray: Ray): IntersectionInfo {
      const info:IntersectionInfo = new IntersectionInfo();
      const Vd:number = this.position.dot(ray.direction);
      if (Vd == 0) {
          return info; // no intersection
      }
      const t:number = -(this.position.dot(ray.position) + this.d)/Vd;
      if (t <= 0) {
          return info;
      }
      info.shape = this;
      info.isHit = true;
      info.position = ray.position.add(ray.direction.multiplyScalar(t));
      info.normal = this.position;
      info.distance = t;
      if (this.material.hasTexture) {
          const vU:Vector = new Vector(this.position.y, this.position.z, -this.position.x);
          const vV:Vector = vU.cross(this.position);
          const u:number = info.position.dot(vU);
          const v:number = info.position.dot(vV);
          info.color = this.material.getColor(u, v);
      } else {
          info.color = this.material.getColor(0, 0);
      }
      return info;
  }
   
  toString(): string {
      return 'Plane [' + this.position + ', d=' + this.d + ']';
  }
}

class IntersectionInfo {
  isHit: boolean;
  hitCount: number;
  shape: Shape|null = null;
  position: Vector;
  normal: Vector;
  color: Color;
  distance: number;
  
  constructor() {
      this.color = new Color(0, 0, 0);
      this.position = new Vector();
      this.normal = new Vector();
      this.distance = 0;
      this.isHit = false;
      this.hitCount = 0;
  }
   toString(): string {
      return 'Intersection [' + this.position + ']';
  }
}

class Camera {
  position: Vector;
  lookAt: Vector;
  equator: Vector;
  up: Vector;
  screen: Vector;
  
  constructor(pos: Vector, lookAt: Vector, up: Vector) {
      this.position = pos;
      this.lookAt = lookAt;
      this.up = up;
      this.equator = lookAt.normalize().cross(this.up);
      this.screen = this.position.add(this.lookAt);
  }
   getRay(vx: number, vy: number): Ray {
      const pos:Vector = this.screen.subtract(this.equator.multiplyScalar(vx).subtract(this.up.multiplyScalar(vy)));
      pos.y = pos.y * -1;
      const dir:Vector = pos.subtract(this.position);
      const ray:Ray = new Ray(pos, dir.normalize());
      return ray;
  }
  
  toString(): string {
      return 'Ray []';
  }
}

class Background {
  color: Color;
  ambience: number = 0.0;
  
  constructor(color: Color, ambience: number) {
      this.color = color;
      this.ambience = ambience;
  }
}

class Options{
  canvasHeight:number = 100;
  canvasWidth:number = 100;
  pixelWidth:number = 2;
  pixelHeight:number = 2;
  renderDiffuse:boolean = false;
  renderShadows:boolean = false;
  renderHighlights:boolean = false;
  renderReflections:boolean = false;
  rayDepth:number = 2
}



let checkNumber: number;

class Engine {

  options:Options;
  constructor(options: Options) {
      this.options = options;
      this.options.canvasHeight /= this.options.pixelHeight;
      this.options.canvasWidth /= this.options.pixelWidth;
  }
  
  setPixel(x: number, y: number, color: Color):void {
      if (x ===  y) {
          checkNumber += color.brightness();
      }
  }

  renderScene(scene: Scene) {
      checkNumber = 0;
      const canvasHeight:number = this.options.canvasHeight;
      const canvasWidth:number = this.options.canvasWidth;
      for (let y = 0; y < canvasHeight; y++) {
          for (let x = 0; x < canvasWidth; x++) {
              const yp:number = y * 1.0 / canvasHeight * 2 - 1;
              const xp:number = x * 1.0 / canvasWidth * 2 - 1;
              const ray:Ray = scene.camera.getRay(xp, yp);
              const color:Color = this.getPixelColor(ray, scene);
              this.setPixel(x, y, color);
          }
      }
      if (checkNumber !== 2321) {
          throw new Error("Scene rendered incorrectly");
      }
  }
  
  getPixelColor(ray: Ray, scene: Scene):Color {
      const info:IntersectionInfo = this.testIntersection(ray, scene, null);
      if (info.isHit) {
          const color:Color = this.rayTrace(info, ray, scene, 0);
          return color;
      }
      return scene.background.color;
  }
  
  testIntersection(ray: Ray, scene: Scene, exclude: Shape|null) {
      let hits:number = 0;
      let best:IntersectionInfo = new IntersectionInfo();
      best.distance = 2000;
      for (let i = 0; i < scene.shapes.length; i++) {
          const shape = scene.shapes[i];
          if (shape != exclude) {
              const info:IntersectionInfo = shape.intersect(ray);
              if (info.isHit && info.distance >= 0 && info.distance < best.distance) {
                  best = info;
                  hits++;
              }
          }
      }
      best.hitCount = hits;
      return best;
  }
  
  getReflectionRay(P: Vector, N: Vector, V: Vector):Ray {
      const c1:number = -N.dot(V);
      const R1:Vector = Vector.add(
          Vector.multiplyScalar(N, 2 * c1),
          V
      );
      return new Ray(P, R1);
  }
  
  rayTrace(info: IntersectionInfo, ray: Ray, scene: Scene, depth: number) {
      let color:Color = Color.multiplyScalar(info.color, scene.background.ambience);
      const shininess:number = Math.pow(10, info.shape!.material.gloss + 1);
       for (let i = 0; i < scene.lights.length; i++) {
          const light = scene.lights[i];
          const v:Vector = Vector.subtract(
              light.position,
              info.position
          ).normalize();
           if (this.options.renderDiffuse) {
              const L:number = v.dot(info.normal);
              if (L > 0.0) {
                  color = Color.add(
                      color,
                      Color.multiply(
                          info.color,
                          Color.multiplyScalar(
                              light.color,
                              L
                          )
                      )
                  );
              }
          }
           if (depth <= this.options.rayDepth) {
              if (this.options.renderReflections && info.shape!.material.reflection > 0) {
                  const reflectionRay:Ray = this.getReflectionRay(info.position, info.normal, ray.direction);
                  const refl:IntersectionInfo = this.testIntersection(reflectionRay, scene, info.shape);
                  if (refl.isHit && refl.distance > 0) {
                      refl.color = this.rayTrace(refl, reflectionRay, scene, depth + 1);
                  } else {
                      refl.color = scene.background.color;
                  }
                   color = Color.blend(
                      color,
                      refl.color,
                      info.shape!.material.reflection
                  );
              }
          }
           let shadowInfo:IntersectionInfo = new IntersectionInfo();
           if (this.options.renderShadows) {
              const shadowRay:Ray = new Ray(info.position, v);
              shadowInfo = this.testIntersection(shadowRay, scene, info.shape);
              if (shadowInfo.isHit && shadowInfo.shape != info.shape) {
                  const vA:Color = Color.multiplyScalar(color, 0.5);
                  const dB:number = (0.5 * Math.pow(shadowInfo.shape!.material.transparency, 0.5));
                  color = Color.addScalar(vA, dB);
              }
          }
           if (this.options.renderHighlights && !shadowInfo.isHit && info.shape!.material.gloss > 0) {
              const Lv:Vector = Vector.subtract(
                  info.shape!.position,
                  light.position
              ).normalize();
               const E:Vector = Vector.subtract(
                  scene.camera.position,
                  info.shape!.position
              ).normalize();
               const H:Vector = Vector.subtract(
                  E,
                  Lv
              ).normalize();
              const glossWeight:number = Math.pow(Math.max(info.normal.dot(H), 0), shininess);
              color = Color.add(
                  Color.multiplyScalar(light.color, glossWeight),
                  color
              );
          }
      }
      color.limit();
      return color;
  }
}

function RaytraceRun() {
  const scene:Scene = new Scene();
  scene.camera = new Camera(
      new Vector(0, 0, -15),
      new Vector(-0.2, 0, 5),
      new Vector(0, 1, 0)
  );
  scene.background = new Background(
      new Color(0.5, 0.5, 0.5),
      0.4
  );
      
  const sphere:Sphere = new Sphere(
      new Vector(-1.5, 1.5, 2),
      1.5,
      new Solid(
          new Color(0,0.5,0.5),
          0.3,
          0.0,
          0.0,
          2.0
          )
  );
      
  const sphere1:Sphere = new Sphere(
      new Vector(1, 0.25, 1),
      0.5,
      new Solid(
          new Color(0.9,0.9,0.9),
          0.1,
          0.0,
          0.0,
          1.5
          )
      );

  const plane:Plane = new Plane(
      new Vector(0.1, 0.9, -0.5).normalize(),
      1.2,
      new Chessboard(
          new Color(1,1,1),
          new Color(0,0,0),
          0.2,
          0.0,
          1.0,
          0.7
          )
  );

  scene.shapes.push(plane);
  scene.shapes.push(sphere);
  scene.shapes.push(sphere1);
      
  const light:Light = new Light(
          new Vector(5, 10, -1),
          new Color(0.8, 0.8, 0.8)
      );
      
  const light1:Light = new Light(
          new Vector(-3, 5, -15),
          new Color(0.8, 0.8, 0.8),
          100
  );
  scene.lights.push(light);
  scene.lights.push(light1);

  const imageWidth:number = 100;
  const imageHeight:number = 100;
  const pixelSize:string[] = "5,5".split(',');
  const renderDiffuse:boolean = true;
  const renderShadows:boolean = true;
  const renderHighlights:boolean = true;
  const renderReflections:boolean = true;
  const rayDepth:number = 2;

  const options:Options = new Options();
  options.canvasWidth = imageWidth;
  options.canvasHeight = imageHeight;
  options.pixelWidth = Number(pixelSize[0]);
  options.pixelHeight = Number(pixelSize[1]);
  options.renderDiffuse = renderDiffuse;
  options.renderHighlights = renderHighlights;
  options.renderShadows = renderShadows;
  options.renderReflections = renderReflections;
  options.rayDepth = rayDepth;
  const raytracer = new Engine(options);
  raytracer.renderScene(scene);
}

/**************************configure and run benchmark********************************/
const benchmarkRun = new BenchmarkRun('raytrace', true, true, RaytraceRun,undefined,undefined,undefined,600)
benchmarkRun.run()
