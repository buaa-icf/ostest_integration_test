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

/**************************source code********************************/

class Scheduler {
  queueCount: number;
  holdCount: number;
  blocks: (TaskControlBlock | undefined)[];
  list: TaskControlBlock | undefined;
  currentTcb: TaskControlBlock | undefined;
  currentId: number | undefined;

  constructor() {
    this.queueCount = 0;
    this.holdCount = 0;
    this.blocks = Array(NUMBER_OF_IDS).fill(undefined);
    this.list = undefined;
    this.currentTcb = undefined;
    this.currentId = undefined;
  }

  addIdleTask(id: number, priority: number, queue: Packet | undefined, count: number): void {
    this.addRunningTask(id, priority, queue, new IdleTask(this, 1, count));
  }

  addWorkerTask(id: number, priority: number, queue: Packet): void {
    this.addTask(id, priority, queue, new WorkerTask(this, ID_HANDLER_A, 0));
  }

  addHandlerTask(id: number, priority: number, queue: Packet): void {
    this.addTask(id, priority, queue, new HandlerTask(this));
  }

  addDeviceTask(id: number, priority: number, queue: Packet | undefined): void {
    this.addTask(id, priority, queue, new DeviceTask(this));
  }

  addRunningTask(id: number, priority: number, queue: Packet | undefined, task: Task): void {
    this.addTask(id, priority, queue, task);
    this.currentTcb!.setRunning();
  }

  addTask(id: number, priority: number, queue: Packet | undefined, task: Task): void {
    this.currentTcb = new TaskControlBlock(this.list, id, priority, queue, task);
    this.list = this.currentTcb;
    this.blocks[id] = this.currentTcb;
  }

  schedule(): void {
    this.currentTcb = this.list;
    while (this.currentTcb !== undefined) {
      if (this.currentTcb.isHeldOrSuspended()) {
        this.currentTcb = this.currentTcb.link;
      } else {
        this.currentId = this.currentTcb.id;
        this.currentTcb = this.currentTcb.run();
      }
    }
  }

  release(id: number): TaskControlBlock | undefined {
    const tcb = this.blocks[id];
    if (tcb === undefined) {
      return tcb;
    }
    tcb.markAsNotHeld();
    if (tcb.priority > this.currentTcb!.priority) {
      return tcb;
    } else {
      return this.currentTcb;
    }
  }

  holdCurrent(): TaskControlBlock | undefined {
    this.holdCount += 1;
    this.currentTcb?.markAsHeld();
    return this.currentTcb?.link;
  }

  suspendCurrent(): TaskControlBlock | undefined {
    this.currentTcb?.markAsSuspended();
    return this.currentTcb;
  }

  queue(packet: Packet): TaskControlBlock | undefined {
    const t = this.blocks[packet.id];
    if (t === undefined) {
      return t;
    }
    this.queueCount += 1;
    packet.link = undefined;
    packet.id = this.currentId!;
    return t.checkPriorityAdd(this.currentTcb!, packet);
  }
}

const ID_IDLE = 0;
const ID_WORKER = 1;
const ID_HANDLER_A = 2;
const ID_HANDLER_B = 3;
const ID_DEVICE_A = 4;
const ID_DEVICE_B = 5;
const NUMBER_OF_IDS = 6;

const KIND_DEVICE = 0;
const KIND_WORK = 1;

class TaskControlBlock {
  link: TaskControlBlock | undefined;
  id: number;
  priority: number;
  queue: Packet | undefined;
  task: Task;
  state: number;

  constructor(link: TaskControlBlock | undefined, id: number, priority: number, queue: Packet | undefined, task: Task) {
    this.link = link;
    this.id = id;
    this.priority = priority;
    this.queue = queue;
    this.task = task;
    if (queue === undefined) {
      this.state = STATE_SUSPENDED;
    } else {
      this.state = STATE_SUSPENDED_RUNNABLE;
    }
  }

  setRunning(): void {
    this.state = STATE_RUNNING;
  }

  markAsNotHeld(): void {
    this.state = this.state & STATE_NOT_HELD;
  }

  markAsHeld(): void {
    this.state = this.state | STATE_HELD;
  }

  isHeldOrSuspended(): boolean {
    return (this.state & STATE_HELD) !== 0 || (this.state === STATE_SUSPENDED);
  }

  markAsSuspended(): void {
    this.state = this.state | STATE_SUSPENDED;
  }

  markAsRunnable(): void {
    this.state = this.state | STATE_RUNNABLE;
  }

  run(): TaskControlBlock | undefined {
    let packet: Packet | undefined;
    if (this.state === STATE_SUSPENDED_RUNNABLE) {
      packet = this.queue;
      this.queue = packet?.link;
      if (this.queue === undefined) {
        this.state = STATE_RUNNING;
      } else {
        this.state = STATE_RUNNABLE;
      }
    } else {
      packet = undefined;
    }
    return this.task.run(packet);
  }

  checkPriorityAdd(taskControlBlock: TaskControlBlock, packet: Packet): TaskControlBlock | undefined {
    if (this.queue === undefined) {
      this.queue = packet;
      this.markAsRunnable();
      if (this.priority > taskControlBlock.priority) {
        return this;
      }
    } else {
      this.queue = packet.addTo(this.queue);
    }
    return taskControlBlock;
  }

  toString(): string {
    return `tcb { ${this.task}@${this.state} }`;
  }
}

const STATE_RUNNING = 0;
const STATE_RUNNABLE = 1;
const STATE_SUSPENDED = 2;
const STATE_HELD = 4;
const STATE_SUSPENDED_RUNNABLE = STATE_SUSPENDED | STATE_RUNNABLE;
const STATE_NOT_HELD = ~STATE_HELD;

interface Task {
  run(packet: Packet | undefined): TaskControlBlock | undefined;
}

class IdleTask implements Task {
  scheduler: Scheduler;
  v1: number;
  count: number;

  constructor(scheduler: Scheduler, v1: number, count: number) {
    this.scheduler = scheduler;
    this.v1 = v1;
    this.count = count;
  }

  run(packet: Packet | undefined): TaskControlBlock | undefined {
    this.count -= 1;
    if (this.count === 0) {
      return this.scheduler.holdCurrent();
    }
    if ((this.v1 & 1) === 0) {
      this.v1 = this.v1 >> 1;
      return this.scheduler.release(ID_DEVICE_A);
    } else {
      this.v1 = (this.v1 >> 1) ^ 0xD008;
      return this.scheduler.release(ID_DEVICE_B);
    }
  }

  toString(): string {
    return "IdleTask";
  }
}

class DeviceTask implements Task {
  scheduler: Scheduler;
  v1: Packet | undefined;

  constructor(scheduler: Scheduler) {
    this.scheduler = scheduler;
    this.v1 = undefined;
  }

  run(packet: Packet | undefined): TaskControlBlock | undefined {
    if (packet === undefined) {
      if (this.v1 === undefined) {
        return this.scheduler.suspendCurrent();
      }
      const v = this.v1;
      this.v1 = undefined;
      return this.scheduler.queue(v);
    } else {
      this.v1 = packet;
      return this.scheduler.holdCurrent();
    }
  }

  toString(): string {
    return "DeviceTask";
  }
}

class WorkerTask implements Task {
  scheduler: Scheduler;
  v1: number;
  v2: number;

  constructor(scheduler: Scheduler, v1: number, v2: number) {
    this.scheduler = scheduler;
    this.v1 = v1;
    this.v2 = v2;
  }

  run(packet: Packet | undefined): TaskControlBlock | undefined {
    if (packet === undefined) {
      return this.scheduler.suspendCurrent();
    } else {
      if (this.v1 === ID_HANDLER_A) {
        this.v1 = ID_HANDLER_B;
      } else {
        this.v1 = ID_HANDLER_A;
      }
      packet.id = this.v1;
      packet.a1 = 0;
      for (let i = 0; i < DATA_SIZE; i++) {
        this.v2 += 1;
        if (this.v2 > 26) {
          this.v2 = 1;
        }
        packet.a2[i] = this.v2;
      }
      return this.scheduler.queue(packet);
    }
  }

  toString(): string {
    return "WorkerTask";
  }
}

class HandlerTask implements Task {
  scheduler: Scheduler;
  v1: Packet | undefined;
  v2: Packet | undefined;

  constructor(scheduler: Scheduler) {
    this.scheduler = scheduler;
    this.v1 = undefined;
    this.v2 = undefined;
  }

  run(packet: Packet | undefined): TaskControlBlock | undefined {
    if (packet !== undefined) {
      if (packet.kind === KIND_WORK) {
        this.v1 = packet.addTo(this.v1);
      } else {
        this.v2 = packet.addTo(this.v2);
      }
    }

    if (this.v1 !== undefined) {
      const count = this.v1.a1;
      let v: Packet | undefined;
      if (count < DATA_SIZE) {
        if (this.v2 !== undefined) {
          v = this.v2;
          this.v2 = this.v2.link;
          v.a1 = this.v1.a2[count];
          this.v1.a1 = count + 1;
          return this.scheduler.queue(v);
        }
      } else {
        v = this.v1;
        this.v1 = this.v1.link;
        return this.scheduler.queue(v);
      }
    }

    return this.scheduler.suspendCurrent();
  }

  toString(): string {
    return "HandlerTask";
  }
}

const DATA_SIZE: number = 4;

class Packet {
  link: Packet | undefined;
  id: number;
  kind: number;
  a1: number;
  a2: number[];

  constructor(link: Packet | undefined, id: number, kind: number) {
    this.link = link;
    this.id = id;
    this.kind = kind;
    this.a1 = 0;
    this.a2 = Array(DATA_SIZE).fill(0);
  }

  addTo(queue: Packet | undefined): Packet {
    this.link = undefined;
    if (queue === undefined) {
      return this;
    }
    let peek: Packet | undefined;
    let next = queue;
    while (next !== undefined) {
      peek = next.link;
      if (peek === undefined) {
        break;
      }
      next = peek;
    }
    if (next !== undefined) {
      next.link = this;
    }
    return queue;
  }

  toString(): string {
    return "Packet";
  }
}

const COUNT = 1000;
const EXPECTED_QUEUE_COUNT = 2322;
const EXPECTED_HOLD_COUNT = 928;

function runRichards(): void {
  const scheduler = new Scheduler();
  scheduler.addIdleTask(ID_IDLE, 0, undefined, COUNT);

  let queue = new Packet(undefined, ID_WORKER, KIND_WORK);
  queue = new Packet(queue, ID_WORKER, KIND_WORK);
  scheduler.addWorkerTask(ID_WORKER, 1000, queue);

  queue = new Packet(undefined, ID_DEVICE_A, KIND_DEVICE);
  queue = new Packet(queue, ID_DEVICE_A, KIND_DEVICE);
  queue = new Packet(queue, ID_DEVICE_A, KIND_DEVICE);
  scheduler.addHandlerTask(ID_HANDLER_A, 2000, queue);

  queue = new Packet(undefined, ID_DEVICE_B, KIND_DEVICE);
  queue = new Packet(queue, ID_DEVICE_B, KIND_DEVICE);
  queue = new Packet(queue, ID_DEVICE_B, KIND_DEVICE);
  scheduler.addHandlerTask(ID_HANDLER_B, 3000, queue);

  scheduler.addDeviceTask(ID_DEVICE_A, 4000, undefined);

  scheduler.addDeviceTask(ID_DEVICE_B, 5000, undefined);

  scheduler.schedule();

  if (scheduler.queueCount !== EXPECTED_QUEUE_COUNT ||
    scheduler.holdCount !== EXPECTED_HOLD_COUNT) {
    const msg = `Error during execution: queueCount = ${scheduler.queueCount}, holdCount = ${scheduler.holdCount}.`;
    throw Error(msg);
  }
}


/**************************configure and run benchmark********************************/
export { runRichards }
