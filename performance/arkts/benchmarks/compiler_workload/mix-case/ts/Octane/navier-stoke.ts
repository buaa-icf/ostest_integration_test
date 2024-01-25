import { BenchmarkRun } from "../BenchmarkMeasure";

/**************************source code********************************/
class Field{
    dens:number[] = [];
    u:number[] = [];
    v:number[] = [];
    fluidField:FluidField;
  
    constructor(fluidField:FluidField, dens: number[], u: number[], v: number[]) {
      this.fluidField = fluidField;
      this.dens = dens;
      this.u = u;
      this.v = v;
  
    }
  
    setDensity(x: number, y: number, d: number): void {
      this.dens[(x + 1) + (y + 1) * this.fluidField.rowSize] = d;
    }
  
    getDensity(x: number, y: number): number {
      return this.dens[(x + 1) + (y + 1) * this.fluidField.rowSize];
    }
  
    setVelocity(x: number, y: number, xv: number, yv: number): void {
      this.u[(x + 1) + (y + 1) * this.fluidField.rowSize] = xv;
      this.v[(x + 1) + (y + 1) * this.fluidField.rowSize] = yv;
    }
  
    getXVelocity(x: number, y: number): number {
      return this.u[(x + 1) + (y + 1) * this.fluidField.rowSize];
    }
  
    public getYVelocity(x: number, y: number): number {
      return this.v[(x + 1) + (y + 1) * this.fluidField.rowSize];
    }
  
  };
  
  
  class FluidField {
    iterations: number = 10;
    visc: number = 0.5;
    dt: number = 0.1;
    dens: number[] = [];
    dens_prev: number[] = [];
    u: number[] = [];
    u_prev: number[] = [];
    v: number[] = [];
    v_prev: number[] = [];
    width: number = 0;
    height: number = 0;
    rowSize: number = 0;
    size: number = 0;
    displayFunc: Function = ()=>{};
    uiCallback: Function = () => {};
    
    constructor() {
      this.setResolution(64, 64);
    }
    
    addFields(x: number[], s: number[], dt: number): void {
      for (let i = 0; i < this.size; i++) {
        x[i] += dt * s[i];
      }
    }
  
    set_bnd(b: number, x: number[]): void {
      if (b === 1) {
        for (let i = 1; i <= this.width; i++) {
          x[i] = x[i + this.rowSize];
          x[i + (this.height + 1) * this.rowSize] = x[i + this.height * this.rowSize];
        }
        for (let j = 1; j <= this.height; j++) {
          x[j * this.rowSize] = -x[1 + j * this.rowSize];
          x[(this.width + 1) + j * this.rowSize] = -x[this.width + j * this.rowSize];
        }
      } else if (b === 2) {
        for (let i = 1; i <= this.width; i++) {
          x[i] = -x[i + this.rowSize];
          x[i + (this.height + 1) * this.rowSize] = -x[i + this.height * this.rowSize];
        }
        for (let j = 1; j <= this.height; j++) {
          x[j * this.rowSize] = x[1 + j * this.rowSize];
          x[(this.width + 1) + j * this.rowSize] = x[this.width + j * this.rowSize];
        }
      } else {
        for (let i = 1; i <= this.width; i++) {
          x[i] = x[i + this.rowSize];
          x[i + (this.height + 1) * this.rowSize] = x[i + this.height * this.rowSize];
        }
        for (let j = 1; j <= this.height; j++) {
          x[j * this.rowSize] = x[1 + j * this.rowSize];
          x[(this.width + 1) + j * this.rowSize] = x[this.width + j * this.rowSize];
        }
      }
      const maxEdge = (this.height + 1) * this.rowSize;
      x[0] = 0.5 * (x[1] + x[this.rowSize]);
      x[maxEdge] = 0.5 * (x[1 + maxEdge] + x[this.height * this.rowSize]);
      x[(this.width + 1)] = 0.5 * (x[this.width] + x[(this.width + 1) + this.rowSize]);
      x[(this.width + 1) + maxEdge] = 0.5 * (x[this.width + maxEdge] + x[(this.width + 1) + this.height * this.rowSize]);
    }
    
  
    lin_solve(b: number, x: number[], x0: number[], a: number, c: number): void {
      if (a === 0 && c === 1) {
        for (let j = 1; j <= this.height; j++) {
          let currentRow = j * this.rowSize;
          currentRow++;
          for (let i = 0; i < this.width; i++) {
            x[currentRow] = x0[currentRow];
            currentRow++;
          }
        }
        this.set_bnd(b, x);
      } else {
        const invC = 1 / c
        for (let k = 0; k < this.iterations; k++) {
          for (let j = 1; j <= this.height; j++) {
            let lastRow = (j - 1) * this.rowSize;
            let currentRow = j * this.rowSize;
            let nextRow = (j + 1) * this.rowSize;
            let lastX = x[currentRow];
            currentRow++;
            for (let i = 1; i <= this.width; i++) {
              lastX = x[currentRow] = (x0[currentRow] + a*(lastX+x[++currentRow]+x[++lastRow]+x[++nextRow])) * invC;
            }
          }
          this.set_bnd(b, x);
        }
      }
    }
  
  
    diffuse(b: number, x: number[], x0: number[], dt: number): void {
      const a:number = 0;
      this.lin_solve(b, x, x0, a, 1 + 4*a);
    }
   
  
    lin_solve2(x: number[], x0: number[], y: number[], y0: number[], a: number, c: number): void {
      if (a === 0 && c === 1) {
        for (let j = 1; j <= this.height; j++) {
          let currentRow = j * this.rowSize;
          currentRow++;
          for (let i = 0; i < this.width; i++) {
            x[currentRow] = x0[currentRow];
            y[currentRow] = y0[currentRow];
            currentRow++;
          }
        }
        this.set_bnd(1, x);
        this.set_bnd(2, y);
      } else {
        const invC = 1 / c;
        for (let k = 0; k < this.iterations; k++) {
          for (let j = 1; j <= this.height; j++) {
            let lastRow = (j - 1) * this.rowSize;
            let currentRow = j * this.rowSize;
            let nextRow = (j + 1) * this.rowSize;
            let lastX = x[currentRow];
            let lastY = y[currentRow];
            currentRow++;
            for (let i = 1; i <= this.width; i++) {
              lastX = x[currentRow] = (x0[currentRow] + a * (lastX + x[currentRow] + x[lastRow] + x[nextRow])) * invC;
              lastY = y[currentRow] = (y0[currentRow] + a * (lastY + y[++currentRow] + y[++lastRow] + y[++nextRow])) * invC;
            }
          }
          this.set_bnd(1, x);
          this.set_bnd(2, y);
        }
      }
    }
  
    diffuse2(x: number[], x0: number[], y: number[], y0: number[], dt: number): void {
      const a:number = 0;
      this.lin_solve2(x, x0, y, y0, a, 1 + 4 * a);
    }
    
    advect(b: number, d: number[], d0: number[], u: number[], v: number[], dt: number): void {
  
      const Wdt0 = dt * this.width;
      const Hdt0 = dt * this.height;
      const Wp5 = this.width + 0.5;
      const Hp5 = this.height + 0.5;
      for (let j = 1; j <= this.height; j++) {
        let pos = j * this.rowSize;
        for (let i = 1; i <= this.width; i++) {
          let x = i - Wdt0 * u[++pos];
          let y = j - Hdt0 * v[pos];
          if (x < 0.5){
            x = 0.5;
          }else if (x > Wp5){
            x = Wp5;
          }
          const i0 = x | 0;
          const i1 = i0 + 1;
          if (y < 0.5){
            y = 0.5;
          }else if (y > Hp5){
            y = Hp5;
          }
          const j0 = y | 0;
          const j1 = j0 + 1;
          const s1 = x - i0;
          const s0 = 1 - s1;
          const t1 = y - j0;
          const t0 = 1 - t1;
          const row1 = j0 * this.rowSize;
          const row2 = j1 * this.rowSize;
          d[pos] = s0 * (t0 * d0[i0 + row1] + t1 * d0[i0 + row2]) + s1 * (t0 * d0[i1 + row1] + t1 * d0[i1 + row2]);
        }
      }
      this.set_bnd(b, d);
    }
    
    
    project(u: number[], v: number[], p: number[], div: number[]): void {
  
      const h = -0.5 / Math.sqrt(this.width * this.height);
      
      for (let j = 1; j <= this.height; j++) {
        const row = j * this.rowSize;
        let previousRow = (j - 1) * this.rowSize;
        let prevValue = row - 1;
        let currentRow = row;
        let nextValue = row + 1;
        let nextRow = (j + 1) * this.rowSize;
        for (let i = 1; i <= this.width; i++) {
          div[++currentRow] = h * (u[++nextValue] - u[++prevValue] + v[++nextRow] - v[++previousRow]);
          p[currentRow] = 0;
        }
      }
      this.set_bnd(0, div);
      this.set_bnd(0, p);
      this.lin_solve(0, p, div, 1, 4);
      const wScale = 0.5 * this.width;
      const hScale = 0.5 * this.height;
      for (let j = 1; j <= this.height; j++) {
        let prevPos = j * this.rowSize - 1;
        let currentPos = j * this.rowSize;
        let nextPos = j * this.rowSize + 1;
        let prevRow = (j - 1) * this.rowSize;
        let nextRow = (j + 1) * this.rowSize;
        for (let i = 1; i <= this.width; i++) {
          u[++currentPos] -= wScale * (p[++nextPos] - p[++prevPos]);
          v[currentPos]   -= hScale * (p[++nextRow] - p[++prevRow]);
        }
      }
      this.set_bnd(1, u);
      this.set_bnd(2, v);
    }
    
    dens_step(x: number[], x0: number[], u: number[], v: number[], dt: number): void {
      this.addFields(x, x0, dt);
      this.diffuse(0, x0, x, dt );
      this.advect(0, x, x0, u, v, dt );
    }
    
  
    vel_step(u: number[], v: number[], u0: number[], v0: number[], dt: number): void {
      this.addFields(u, u0, dt);
      this.addFields(v, v0, dt);
      [u, u0] = [u0, u];
      [v, v0] = [v0, v];
      this.diffuse2(u, u0, v, v0, dt);
      this.project(u, v, u0, v0);
      [u, u0] = [u0, u];
      [v, v0] = [v0, v];
      this.advect(1, u, u0, u0, v0, dt);
      this.advect(2, v, v0, u0, v0, dt);
      this.project(u, v, u0, v0);
    }
  
    queryUI(d: number[], u: number[], v: number[]): void {
        for (let i = 0; i < this.size; i++) {
          u[i] = v[i] = d[i] = 0.0;
        }
        this.uiCallback(new Field(this,d, u, v));
    }
  
  
  
    update(): void {
      this.queryUI(this.dens_prev, this.u_prev, this.v_prev);
      this.vel_step(this.u, this.v, this.u_prev, this.v_prev, this.dt);
      this.dens_step(this.dens, this.dens_prev, this.u, this.v, this.dt);
      this.displayFunc(new Field(this,this.dens, this.u, this.v));
    }
  
    setDisplayFunction(func: Function): void {
        this.displayFunc = func;
    }
    
    setIterations(iters: number): void {
        if (iters > 0 && iters <= 100)
            this.iterations = iters;
    }
    
    setUICallback(callback: Function): void {
        this.uiCallback = callback;
    }
  
    reset(): void {
      this.rowSize = this.width + 2;
      this.size = this.rowSize * (this.height + 2);
      this.dens = new Array(this.size).fill(0);
      this.dens_prev = new Array(this.size).fill(0);
      this.u = new Array(this.size).fill(0);
      this.u_prev = new Array(this.size).fill(0);
      this.v = new Array(this.size).fill(0);
      this.v_prev = new Array(this.size).fill(0);
    }
    
    getDens(): number[] {
          return this.dens;
    }
    
    setResolution(hRes: number, wRes: number): boolean {
      const res: number = wRes * hRes;
      if (res > 0 && res < 1000000 && (wRes !== this.width || hRes !== this.height)) {
        this.width = wRes;
        this.height = hRes;
        this.reset();
        return true;
      } else {
        return false;
      }
    }
  }
  
  let framesTillAddingPoints: number = 0;
  let framesBetweenAddingPoints: number = 5;
  
  
  
  function addPoints(field: Field): void {
    const n: number = 64;
    for (let i: number = 1; i <= n; i++) {
      field.setVelocity(i, i, n, n);
      field.setDensity(i, i, 5);
      field.setVelocity(i, n - i, -n, -n);
      field.setDensity(i, n - i, 20);
      field.setVelocity(128 - i, n + i, -n, -n);
      field.setDensity(128 - i, n + i, 30);
    }
  }
  
  function prepareFrame(field: Field): void {
    if (framesTillAddingPoints === 0) {
      addPoints(field);
      framesTillAddingPoints = framesBetweenAddingPoints;
      framesBetweenAddingPoints++;
    } else {
      framesTillAddingPoints--;
    }
  }
  
  
  const solver:FluidField = new FluidField();
  let nsFrameCounter:number = 0;
   
  function NavierStokesSetup():void{
    solver.setResolution(128, 128);
    solver.setIterations(20);
    solver.setDisplayFunction(function(){});
    solver.setUICallback(prepareFrame);
    solver.reset();
  }
  function NavierstokesRun():void{
    solver.update();
    nsFrameCounter++;
    if(nsFrameCounter == 15){
      checkResult(solver.getDens())
    }
  }
  
  function checkResult(dens: number[]): void {
    let result: number = 0;
    for (let i = 7000; i < 7100; i++) {
      result += ~~(dens[i] * 10);
    }
    if (result !== 77) {
      throw new Error("checksum failed");
    }
  }
  

/**************************configure and run benchmark********************************/
const benchmarkRun = new BenchmarkRun('navier-stokes', true, true, NavierstokesRun,NavierStokesSetup,undefined,undefined,180)
benchmarkRun.run()
