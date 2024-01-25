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
declare function print(arg: any, arg1?: any): string;

class Strength {
    strengthValue: number;
    name: string;
    
    static REQUIRED = new Strength(0, "required");
    static STONG_PREFERRED = new Strength(1, "strongPreferred");
    static PREFERRED = new Strength(2, "preferred");
    static STRONG_DEFAULT = new Strength(3, "strongDefault");
    static NORMAL = new Strength(4, "normal");
    static WEAK_DEFAULT = new Strength(5, "weakDefault");
    static WEAKEST = new Strength(6, "weakest");
  
    constructor(strengthValue: number, name: string) {
      this.strengthValue = strengthValue;
      this.name = name;
    }
     static stronger(s1: Strength, s2: Strength): boolean {
      return s1.strengthValue < s2.strengthValue;
    }
     static weaker(s1: Strength, s2: Strength): boolean {
      return s1.strengthValue > s2.strengthValue;
    }
     static weakestOf(s1: Strength, s2: Strength): Strength {
      return this.weaker(s1, s2) ? s1 : s2;
    }
     static strongest(s1: Strength, s2: Strength): Strength {
      return this.stronger(s1, s2) ? s1 : s2;
    }
     nextWeaker(): Strength {
      switch (this.strengthValue) {
        case 0: return Strength.WEAKEST;
        case 1: return Strength.WEAK_DEFAULT;
        case 2: return Strength.NORMAL;
        case 3: return Strength.STRONG_DEFAULT;
        case 4: return Strength.PREFERRED;
        case 5: return Strength.REQUIRED;
        default: return new Strength(0,"");
      }
    }
  }
  
  abstract class Constraint {
    strength: Strength;
  
    abstract addToGraph():void;
    abstract chooseMethod(mark:number):void;
    abstract isSatisfied():boolean;
    abstract markInputs(mark:number):void;
    abstract output():Variable;
    abstract removeFromGraph():void;
    abstract markUnsatisfied():void;
    abstract execute():void;
    abstract inputsKnown(mark: number):boolean;
    abstract recalculate():void;
  
    constructor(strength: Strength) {
      this.strength = strength;
    }
  
    addConstraint(): void {
      this.addToGraph();
      planner.incrementalAdd(this);
    }
  
    satisfy(mark: number): Constraint | null {
      this.chooseMethod(mark);
      if (!this.isSatisfied()) {
        if (this.strength === Strength.REQUIRED)
          print("Could not satisfy a required constraint!");
        return null;
      }
      this.markInputs(mark);
      const out:Variable = this.output();
      const overridden:Constraint|null = out.determinedBy;
      if (overridden != null) overridden.markUnsatisfied();
      out.determinedBy = this;
      if (!planner.addPropagate(this, mark)){
        print("Cycle encountered");
      }
      out.mark = mark;
      return overridden;
    }
    
    public destroyConstraint(): void {
      if (this.isSatisfied()){
        planner.incrementalRemove(this);
      } else {
        this.removeFromGraph();
      }
    }
    public isInput(): boolean {
      return false;
    }
  }
  
  enum Direction {
    NONE = 0,
    FORWARD = 1,
    BACKWARD = -1
  }
  
  abstract class BinaryConstraint extends Constraint {
    v1: Variable;
    v2: Variable;
    direction: Direction;
    
    constructor(var1: Variable, var2: Variable, strength: Strength) {
      super(strength);
      this.v1 = var1;
      this.v2 = var2;
      this.direction = Direction.NONE;
      // this.addConstraint();
    }
    
    chooseMethod(mark: number):void {
      if (this.v1.mark == mark) {
        this.direction = (this.v2.mark != mark && Strength.stronger(this.strength, this.v2.walkStrength))
          ? Direction.FORWARD
          : Direction.NONE;
      }
      if (this.v2.mark == mark) {
        this.direction = (this.v1.mark != mark && Strength.stronger(this.strength, this.v1.walkStrength))
          ? Direction.BACKWARD
          : Direction.NONE;
      }
      if (Strength.weaker(this.v1.walkStrength, this.v2.walkStrength)) {
        this.direction = Strength.stronger(this.strength, this.v1.walkStrength)
          ? Direction.BACKWARD
          : Direction.NONE;
      } else {
        this.direction = Strength.stronger(this.strength, this.v2.walkStrength)
          ? Direction.FORWARD
          : Direction.BACKWARD;
      }
    }
    
    addToGraph():void {
      this.v1.addConstraint(this);
      this.v2.addConstraint(this);
      this.direction = Direction.NONE;
    }
    
    isSatisfied():boolean {
      return this.direction != Direction.NONE;
    }
    
    markInputs(mark: number):void {
      this.input().mark = mark;
    }
    
    input():Variable {
      return (this.direction == Direction.FORWARD) ? this.v1 : this.v2;
    }
    
    output():Variable {
      return (this.direction == Direction.FORWARD) ? this.v2 : this.v1;
    }
    
    recalculate():void {
      let ihn:Variable = this.input();
      let out:Variable = this.output();
      out.walkStrength = Strength.weakestOf(this.strength, ihn.walkStrength);
      out.stay = ihn.stay;
      if (out.stay) {
        this.execute();
      }
    }
    
    markUnsatisfied():void {
      this.direction = Direction.NONE;
    }
    
    inputsKnown(mark: number):boolean {
      let i:Variable = this.input();
      return i.mark == mark || i.stay || i.determinedBy == null;
    }
    
    removeFromGraph():void {
      if (this.v1 != null){
        this.v1.removeConstraint(this);
      } 
      if (this.v2 != null) {
        this.v2.removeConstraint(this);
      }
      this.direction = Direction.NONE;
    }
  }
  
  class ScaleConstraint extends BinaryConstraint {
    scale: Variable;
    offset: Variable;
    
    constructor(src: Variable, scale: Variable, offset: Variable, dest: Variable, strength: Strength) {
      super(src, dest, strength);
      this.scale = scale;
      this.direction = Direction.NONE;
      this.offset = offset;
      this.addScaAndOffToGraph();
      this.addConstraint();
    }
  
    addScaAndOffToGraph():void{
      this.scale.addConstraint(this);
      this.offset.addConstraint(this);
    }
    
    removeFromGraph():void {
      if (this.scale != null) {
        this.scale.removeConstraint(this);
      }
      if (this.offset != null) {
        this.offset.removeConstraint(this);
      }
    }
    
    markInputs(mark: number):void {
      this.scale.mark = this.offset.mark = mark;
    }
    
    execute():void {
      if (this.direction == Direction.FORWARD) {
        this.v2.value = this.v1.value * this.scale.value + this.offset.value;
      } else {
        this.v1.value = (this.v2.value - this.offset.value) / this.scale.value;
      }
    }
    
    recalculate():void {
      let ihn:Variable = this.input();
      let out:Variable = this.output();
      out.walkStrength = Strength.weakestOf(this.strength, ihn.walkStrength);
      out.stay = ihn.stay && this.scale.stay && this.offset.stay;
      if (out.stay) {
        this.execute();
      }
    }
  }
  
  
  class EqualityConstraint extends BinaryConstraint {
    constructor(var1: Variable, var2: Variable, strength: Strength) {
      super(var1, var2, strength);
      this.addConstraint();
    }
    
    execute():void {
      this.output().value = this.input().value;
    }
  }
  
  
  abstract class UnaryConstraint extends Constraint {
    myOutput: Variable;
    satisfied: boolean;
    constructor(v: Variable, strength: Strength) {
      super(strength);
      this.myOutput = v;
      this.satisfied = false;
      this.addConstraint();
    }
    addToGraph():void {
      this.myOutput.addConstraint(this);
      this.satisfied = false;
    }
    chooseMethod(mark: number):void {
      this.satisfied = (this.myOutput.mark !== mark) && Strength.stronger(this.strength, this.myOutput.walkStrength);
    }
    isSatisfied():boolean {
      return this.satisfied;
    }
    markInputs(mark: number):void {
      // has no inputs
    }
    output():Variable {
      return this.myOutput;
    }
    recalculate():void {
      this.myOutput.walkStrength = this.strength;
      this.myOutput.stay = !this.isInput();
      if (this.myOutput.stay) {
        this.execute();
      }
    }
    markUnsatisfied():void {
      this.satisfied = false;
    }
    inputsKnown(mark: number):boolean {
      return true;
    }
    removeFromGraph():void {
      if (this.myOutput != null) {
        this.myOutput.removeConstraint(this);
      }
      this.satisfied = false;
    }
  }
  
  class EditConstraint extends UnaryConstraint {
    constructor(v: Variable, str: Strength) {
      super(v, str);
    }
    isInput():boolean {
      return true;
    }
    execute():void {
    }
  }
  
  class StayConstraint extends UnaryConstraint {
    constructor(v: Variable, str: Strength) {
      super(v, str);
    }
    execute():void {
      
    }
  }
  
  
  
  class OrderedCollection<T> {
    elms: T[];
    constructor() {
      this.elms = [];
    }
     add(elm: T):void {
      this.elms.push(elm);
    }
    
    at(index: number):T{
      return this.elms[index];
    }
    
    size():number {
      return this.elms.length;
    }
    
    removeFirst():T|undefined {
      return this.elms.pop();
    }
     remove(elm: T):void {
      let index:number = 0, skipped:number = 0;
      for (let i = 0; i < this.elms.length; i++) {
        let value:T = this.elms[i];
        if (value !== elm) {
          this.elms[index] = value;
          index++;
        } else {
          skipped++;
        }
      }
      for (let i = 0; i < skipped; i++) {
        this.elms.pop();
      }
    }
  }
  
  
  class Variable {
    value: number;
    constraints: OrderedCollection<Constraint>;
    determinedBy: Constraint | null;
    mark: number;
    walkStrength: Strength;
    stay: boolean;
    name: string;
    
    constructor(name: string, initialValue?: number) {
      this.value = initialValue || 0;
      this.constraints = new OrderedCollection();
      this.determinedBy = null;
      this.mark = 0;
      this.walkStrength = Strength.WEAKEST;
      this.stay = true;
      this.name = name;
    }
  
    addConstraint(c: Constraint): void {
      this.constraints.add(c);
    }
  
    removeConstraint(c: Constraint): void {
      this.constraints.remove(c);
      if (this.determinedBy === c) {
        this.determinedBy = null;
      }
    }
  }
  
  class Plan {
    v: OrderedCollection<Constraint>;
    constructor() {
      this.v = new OrderedCollection();
    }
    addConstraint(c: Constraint):void {
      this.v.add(c);
    }
    size():number {
      return this.v.size();
    }
    constraintAt(index: number):Constraint {
      return this.v.at(index);
    }
    execute() {
      for (let i = 0; i < this.size(); i++) {
        let c:Constraint = this.constraintAt(i);
        c.execute();
      }
    }
  }
  
  class Planner {
    currentMark: number;
    
    constructor() {
      this.currentMark = 0;
    }
    
    incrementalAdd(c: Constraint):void {
      const mark:number = this.newMark();
      let overridden:Constraint|null = c.satisfy(mark);
      while (overridden !== null) {
        overridden = overridden.satisfy(mark);
      }
    }
    
    incrementalRemove(c: Constraint):void {
      const out:Variable = c.output();
      c.markUnsatisfied();
      c.removeFromGraph();
      const unsatisfied = this.removePropagateFrom(out);
      let strength:Strength = Strength.REQUIRED;
      do {
        for (let i = 0; i < unsatisfied.size(); i++) {
          const u = unsatisfied.at(i);
          if (u.strength == strength) {
            this.incrementalAdd(u);
          }
        }
        strength = strength.nextWeaker();
      } while (strength != Strength.WEAKEST);
    }
    
    newMark():number {
      return ++this.currentMark;
    }
    
    makePlan(sources: OrderedCollection<Constraint>) {
      const mark = this.newMark();
      const plan = new Plan();
      const todo = sources;
      while (todo.size() > 0) {
        const c:Constraint|undefined = todo.removeFirst();
        if (c!.output().mark != mark && c!.inputsKnown(mark)) {
          plan.addConstraint(c!);
          c!.output().mark = mark;
          this.addConstraintsConsumingTo(c!.output(), todo);
        }
      }
      return plan;
    }
    
    extractPlanFromConstraints(constraints: OrderedCollection<Constraint>):Plan {
      const sources:OrderedCollection<Constraint> = new OrderedCollection();
      for (let i = 0; i < constraints.size(); i++) {
        const c:Constraint = constraints.at(i);
        if (c.isInput() && c.isSatisfied()) {
          sources.add(c);
        }
      }
      return this.makePlan(sources);
    }
    
    addPropagate(c: Constraint, mark: number):boolean {
      const todo:OrderedCollection<Constraint> = new OrderedCollection();
      todo.add(c);
      while (todo.size() > 0) {
        const d:Constraint|undefined = todo.removeFirst();
        if (d!.output().mark == mark) {
          this.incrementalRemove(c);
          return false;
        }
        d!.recalculate();
        this.addConstraintsConsumingTo(d!.output(), todo);
      }
      return true;
    }
    
    removePropagateFrom(out:Variable):OrderedCollection<Constraint> {
      out.determinedBy = null;
      out.walkStrength = Strength.WEAKEST;
      out.stay = true;
      const unsatisfied:OrderedCollection<Constraint> = new OrderedCollection();
      const todo:OrderedCollection<Variable> = new OrderedCollection();
      todo.add(out);
      while (todo.size() > 0) {
        const v:Variable|undefined = todo.removeFirst();
        for (let i = 0; i < v!.constraints.size(); i++) {
          const c:Constraint = v!.constraints.at(i);
          if (!c.isSatisfied()) {
            unsatisfied.add(c);
          }
        }
        const determining = v!.determinedBy;
        for (let i = 0; i < v!.constraints.size(); i++) {
          const next = v!.constraints.at(i);
          if (next != determining && next.isSatisfied()) {
            next.recalculate();
            todo.add(next.output());
          }
        }
      }
      return unsatisfied;
    }
    
    addConstraintsConsumingTo(v: Variable, coll: OrderedCollection<Constraint>) {
      const determining:Constraint|null = v.determinedBy;
      const cc:OrderedCollection<Constraint> = v.constraints;
      for (let i = 0; i < cc.size(); i++) {
        const c:Constraint = cc.at(i);
        if (c != determining && c.isSatisfied()) {
          coll.add(c);
        }
      }
    }
  }
  
  function change(v: Variable, newValue: number): void {
  const edit: EditConstraint = new EditConstraint(v, Strength.PREFERRED);
  const edits: OrderedCollection<Constraint> = new OrderedCollection();
  edits.add(edit);
  const plan: Plan = planner.extractPlanFromConstraints(edits);
  for (let i: number = 0; i < 10; i++) {
    v.value = newValue;
    plan.execute();
  }
  edit.destroyConstraint();
  }
  
  let planner: Planner;
  
  
  function chainTest(n: number): void {
    planner = new Planner();
    let prev: Variable | null = null, first: Variable | null = null, last: Variable | null = null;
    for (let i = 0; i <= n; i++) {
      let name: string = "v" + i;
      let v: Variable = new Variable(name);
      if (prev !== null)
        new EqualityConstraint(prev, v, Strength.REQUIRED);
      if (i === 0) first = v;
      if (i === n) last = v;
      prev = v;
    }
    new StayConstraint(last!, Strength.STRONG_DEFAULT);
    let edit: EditConstraint = new EditConstraint(first!, Strength.PREFERRED);
    let edits: OrderedCollection<Constraint> = new OrderedCollection();
    edits.add(edit);
    let plan: Plan = planner.extractPlanFromConstraints(edits);
    for (let i = 0; i < 100; i++) {
      first!.value = i;
      plan.execute();
      if (last!.value !== i){
        throw new Error("Chain test failed.");
      }
    }
  }
  
  function projectionTest(n: number): void {
    planner = new Planner();
    let scale: Variable = new Variable("scale", 10);
    let offset: Variable = new Variable("offset", 1000);
    let src: Variable, dst: Variable;
    let dests: OrderedCollection<Variable> = new OrderedCollection();
    for (let i = 0; i < n; i++) {
      src = new Variable("src" + i, i);
      dst = new Variable("dst" + i, i);
      dests.add(dst);
      new StayConstraint(src, Strength.NORMAL);
      new ScaleConstraint(src, scale, offset, dst, Strength.REQUIRED);
    }
    change(src!, 17);
    if (dst!.value !== 1170) {
        throw new Error("Projection 1 failed");
    }
    change(dst!, 1050);
    if (src!.value !== 5) {
      throw new Error("Projection 2 failed");
    }
    change(scale, 5);
    for (let i = 0; i < n - 1; i++) {
      if (dests.at(i).value !== i * 5 + 1000){
        throw new Error("Projection 3 failed");
      }
    }
    change(offset, 2000);
    for (let i = 0; i < n - 1; i++) {
      if (dests.at(i).value !== i * 5 + 2000){
        throw new Error("Projection 4 failed");
      }
    }
  }
  
  function DeltablueRun(): void {
    chainTest(100);
    projectionTest(100);
  }

/**************************configure and run benchmark********************************/
const benchmarkRun = new BenchmarkRun('deltablue', true, true, DeltablueRun,undefined,undefined,undefined,4400)
benchmarkRun.run()
