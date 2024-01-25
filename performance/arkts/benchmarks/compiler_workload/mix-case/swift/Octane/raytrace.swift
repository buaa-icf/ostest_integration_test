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


import Foundation

struct defaultRNG: RandomNumberGenerator {
    var seed: UInt64 = 49734321
    mutating func next() -> UInt64 {
        seed = ((seed &+ 0x7ed55d16) &+ (seed << 12)) & 0xffffffff
        seed = ((seed ^ 0xc761c23c) ^ (seed >> 19)) & 0xffffffff
        seed = ((seed &+ 0x165667b1) &+ (seed << 5)) & 0xffffffff
        seed = ((seed &+ 0xd3a2646c) ^ (seed << 9)) & 0xffffffff
        seed = ((seed &+ 0xfd7046c5) &+ (seed << 3)) & 0xffffffff
        seed = ((seed ^ 0xb55a4f09) ^ (seed >> 16)) & 0xffffffff
        return seed
    }
    
    mutating func nextDouble() -> Double {
        let seedI = next()
        let randomDouble = Double(seedI&0xfffffff) / 0x10000000
        return randomDouble
    }
}

class BenchmarkRNG{
    static var rng = defaultRNG()

    static func nextDouble()->Double{
        return BenchmarkRNG.rng.nextDouble()
    }

    static func resetRNG(){
        BenchmarkRNG.rng = defaultRNG()
    }

}

enum BenchmarkError:Error{
    case WrongResult(String)
}

class BenchmarkResult {
    var time: Double
    var latency: Double
    
    init(time: Double, latency: Double) {
        self.time = time
        self.latency = latency
    }
}

class Benchmark {
    var name: String
    var doWarmup: Bool
    var doDeterministic: Bool
    var run: () throws -> Void
    var setup: (() -> Void)?
    var tearDown: (() -> Void)?
    var rmsResult: (() -> Double)?
    var minIterations: Int
    var data: (runs: Int, elapsed: Int)?
    
    init(name: String, doWarmup: Bool, doDeterministic: Bool,
        run: @escaping () throws -> Void,
        setup: (() -> Void)? = nil, 
        tearDown: (() -> Void)? = nil,
        rmsResult: (() -> Double)? = nil, 
        minIterations: Int? = nil) {
            self.name = name
            self.doWarmup = doWarmup
            self.doDeterministic = doDeterministic
            self.run = run
            self.setup = setup
            self.tearDown = tearDown
            self.minIterations = minIterations ?? 32
            self.data = nil
    }
    
    func runSetup(benchmarkResult: inout BenchmarkResult) throws {
        setup?()
        try runBenchmark(benchmarkResult: &benchmarkResult)
    }
    
    func runBenchmark(benchmarkResult: inout BenchmarkResult)throws {
        try runSingle(benchmarkResult:&benchmarkResult)
        if data == nil {
            runTearDown()
        } else {
            try runBenchmark(benchmarkResult: &benchmarkResult)
        }
    }
    
    func runTearDown() {
        tearDown?()
    }
    
    func runSingle(benchmarkResult: inout BenchmarkResult) throws {
        if !doWarmup && data == nil {
            data = (runs: 0, elapsed: 0)
        }
        
        if data == nil {
            try measure()
            data = (runs: 0, elapsed: 0)
        } else {
            try measure()
            if data!.runs < minIterations { return }
            let usec: Double = Double(data!.elapsed * 1000) / Double(data!.runs)
            let rms: Double = (rmsResult != nil) ? rmsResult!() : 0
            benchmarkResult.time = usec
            benchmarkResult.latency = rms
            data = nil
        }
    }
    
    func measure() throws {
        var elapsed: Int = 0
        let start: Int = Int(Date().timeIntervalSince1970 * 1000)
        
        var i = 0
        while (doDeterministic ? i < minIterations : elapsed < 1000) {
            try run()
            elapsed = Int(Date().timeIntervalSince1970 * 1000) - start
            i += 1
        }
        
        if data != nil {
            data!.runs += i
            data!.elapsed += elapsed
        }
    }
}


class BenchmarkRun {
    var benchmark: Benchmark

    init(name: String, doWarmup: Bool, doDeterministic: Bool,
        run: @escaping () throws -> Void,
        setup: (() -> Void)? = nil, 
        tearDown: (() -> Void)? = nil,
        rmsResult: (() -> Double)? = nil, 
        minIterations: Int? = nil){
        self.benchmark = Benchmark(name:name,doWarmup: doWarmup,doDeterministic:doDeterministic,run:run,setup:setup,tearDown:tearDown,rmsResult:rmsResult,minIterations:minIterations)
    }
    
    func run(){
	BenchmarkRNG.resetRNG()
        var result = BenchmarkResult(time: 0, latency: 0)
        do{
            try self.benchmark.runSetup(benchmarkResult: &result)
            printResult(result)
        }catch let BenchmarkError.WrongResult(errMsg){
            prinErrorMessage(errMsg)
        }catch{
            prinErrorMessage("unknown error!")
        }
        
    }

    func printResult(_ result:BenchmarkResult){
        print("\(self.benchmark.name): usec = \(result.time)\n\(self.benchmark.name): latency = \(result.latency)")
    }
    

    func prinErrorMessage(_ errorMessage:String){
        print("\(self.benchmark.name) Error: \(errorMessage)")
    }
}

/**************************source code********************************/

class Color {
    var red: Float
    var green: Float
    var blue: Float
     init(r: Float = 0.0, g: Float = 0.0, b: Float = 0.0) {
        self.red = r
        self.green = g
        self.blue = b
    }
     static func add(c1: Color, c2: Color) -> Color {
        let result = Color()
        result.red = c1.red + c2.red
        result.green = c1.green + c2.green
        result.blue = c1.blue + c2.blue
        return result
    }
     static func addScalar(c1: Color, s: Float) -> Color {
        let result = Color()
        result.red = c1.red + s
        result.green = c1.green + s
        result.blue = c1.blue + s
        result.limit()
        return result
    }
     static func subtract(c1: Color, c2: Color) -> Color {
        let result = Color()
        result.red = c1.red - c2.red
        result.green = c1.green - c2.green
        result.blue = c1.blue - c2.blue
        return result
    }
     static func multiply(c1: Color, c2: Color) -> Color {
        let result = Color()
        result.red = c1.red * c2.red
        result.green = c1.green * c2.green
        result.blue = c1.blue * c2.blue
        return result
    }
     static func multiplyScalar(c1: Color, f: Float) -> Color {
        let result = Color()
        result.red = c1.red * f
        result.green = c1.green * f
        result.blue = c1.blue * f
        return result
    }
     static func divideFactor(c1: Color, f: Float) -> Color {
        let result = Color()
        result.red = c1.red / f
        result.green = c1.green / f
        result.blue = c1.blue / f
        return result
    }
     func limit() {
        self.red = (self.red > 0.0) ? ((self.red > 1.0) ? 1.0 : self.red) : 0.0
        self.green = (self.green > 0.0) ? ((self.green > 1.0) ? 1.0 : self.green) : 0.0
        self.blue = (self.blue > 0.0) ? ((self.blue > 1.0) ? 1.0 : self.blue) : 0.0
    }
     func distance(color: Color) -> Float {
        return abs(self.red - color.red) + abs(self.green - color.green) + abs(self.blue - color.blue)
    }
     static func blend(c1: Color, c2: Color, w: Float) -> Color {
        let result = Color()
        result.red = (1 - w) * c1.red + w * c2.red
        result.green = (1 - w) * c1.green + w * c2.green
        result.blue = (1 - w) * c1.blue + w * c2.blue
        return result
    }
     func brightness() -> Int {
        let r = Int(self.red * 255)
        let g = Int(self.green * 255)
        let b = Int(self.blue * 255)
        return (r * 77 + g * 150 + b * 29) >> 8
    }
     func toString() -> String {
        let r = Int(self.red * 255)
        let g = Int(self.green * 255)
        let b = Int(self.blue * 255)
        return "rgb(\(r),\(g),\(b))"
    }
}

class Vector {
    var x: Float
    var y: Float
    var z: Float
     init(x: Float? = nil, y: Float? = nil, z: Float? = nil) {
        self.x = x ?? 0
        self.y = y ?? 0
        self.z = z ?? 0
    }
     func copy(vector: Vector) {
        self.x = vector.x
        self.y = vector.y
        self.z = vector.z
    }
     func normalize() -> Vector {
        let m: Float = self.magnitude()
        return Vector(x: self.x / m, y: self.y / m, z: self.z / m)
    }
     func magnitude() -> Float {
        return sqrt((self.x * self.x) + (self.y * self.y) + (self.z * self.z))
    }
     func cross(w: Vector) -> Vector {
        return Vector(
            x: -self.z * w.y + self.y * w.z,
            y: self.z * w.x - self.x * w.z,
            z: -self.y * w.x + self.x * w.y
        )
    }
     func dot(w: Vector) -> Float {
        return self.x * w.x + self.y * w.y + self.z * w.z
    }
     func multiplyScalar(w: Float) -> Vector {
        return Vector(x: self.x * w, y: self.y * w, z: self.z * w)
    }
     func subtract(w: Vector) -> Vector {
        return Vector(x: self.x - w.x, y: self.y - w.y, z: self.z - w.z)
    }
     func add(w: Vector) -> Vector {
        return Vector(x: w.x + self.x, y: w.y + self.y, z: w.z + self.z)
    }
     static func add(v: Vector, w: Vector) -> Vector {
        return Vector(x: w.x + v.x, y: w.y + v.y, z: w.z + v.z)
    }
     static func subtract(v: Vector, w: Vector) -> Vector {
        return Vector(x: v.x - w.x, y: v.y - w.y, z: v.z - w.z)
    }
     static func multiplyVector(v: Vector, w: Vector) -> Vector {
        return Vector(x: v.x * w.x, y: v.y * w.y, z: v.z * w.z)
    }
     static func multiplyScalar(v: Vector, w: Float) -> Vector {
        return Vector(x: v.x * w, y: v.y * w, z: v.z * w)
    }
     func toString() -> String {
        return "Vector [\(self.x),\(self.y),\(self.z)]"
    }
}

class Light {
    var position: Vector
    var color: Color
    var intensity: Float
     init(pos: Vector, color: Color, intensity: Float = 10.0) {
        self.position = pos
        self.color = color
        self.intensity = intensity
    }
     func toString() -> String {
        return "Light [\(self.position.x),\(self.position.y),\(self.position.z)]"
    }
}
 class Ray {
    var position: Vector
    var direction: Vector
     init(pos: Vector, dir: Vector) {
        self.position = pos
        self.direction = dir
    }
     func toString() -> String {
        return "Ray [\(self.position),\(self.direction)]"
    }
}


class Background {
    var color: Color
    var ambience: Float
     init(color: Color, ambience: Float) {
        self.color = color
        self.ambience = ambience
    }
}


class BaseMaterial {
    var gloss: Float
    var transparency: Float
    var reflection: Float
    var refraction: Float
    var hasTexture: Bool
    
    init() {
        self.gloss = 2.0
        self.transparency = 0.0
        self.reflection = 0.0
        self.refraction = 0.50
        self.hasTexture = false
    }
    
    func getColor(u: Float, v: Float) -> Color {
        fatalError("Subclasses must override the getColor method.")
    }
     func wrapUp(t: Float) -> Float {
        var t = t.truncatingRemainder(dividingBy: 2.0)
        if t < -1 { t += 2.0 }
        if t >= 1 { t -= 2.0 }
        return t
    }
     func toString() -> String {
        return "Material [gloss=\(self.gloss), transparency=\(self.transparency), hasTexture=\(self.hasTexture)]"
    }
}


class Solid: BaseMaterial {
    var color: Color
    init(color: Color, reflection: Float, refraction: Float, transparency: Float, gloss: Float) {
        self.color = color
        super.init()
        self.reflection = reflection
        self.transparency = transparency
        self.gloss = gloss
        self.hasTexture = false
    }
     override func getColor(u: Float, v: Float) -> Color {
        return self.color
    }
     override func toString() -> String {
        return "SolidMaterial [gloss=\(self.gloss), transparency=\(self.transparency), hasTexture=\(self.hasTexture)]"
    }
}


class Chessboard: BaseMaterial {
    var colorEven: Color
    var colorOdd: Color
    var density: Float
     init(colorEven: Color, colorOdd: Color, reflection: Float, transparency: Float, gloss: Float, density: Float) {
        self.colorEven = colorEven
        self.colorOdd = colorOdd
        self.density = density
        super.init()
        self.reflection = reflection
        self.transparency = transparency
        self.gloss = gloss
        self.hasTexture = true
    }
     override func getColor(u: Float, v: Float) -> Color {
        let t: Float = self.wrapUp(t: u * self.density) * self.wrapUp(t: v * self.density)
        if t < 0.0 {
            return self.colorEven
        } else {
            return self.colorOdd
        }
    }
     override func toString() -> String {
        return "ChessMaterial [gloss=\(self.gloss), transparency=\(self.transparency), hasTexture=\(self.hasTexture)]"
    }
}


class IntersectionInfo {
    var isHit: Bool
    var hitCount: Int
    var shape: Shape? = nil
    var position: Vector
    var normal: Vector
    var color: Color
    var distance: Float
    
    init() {
        self.color = Color(r: 0, g: 0, b: 0)
        self.position = Vector()
        self.normal = Vector()
        self.distance = 0
        self.isHit = false
        self.hitCount = 0
    }
     func toString() -> String {
        return "Intersection [\(self.position)]"
    }
}


class Shape {
    var position: Vector
    var material: BaseMaterial
     init(position: Vector, material: BaseMaterial) {
        self.position = position
        self.material = material
    }
    
    func intersect(ray: Ray) -> IntersectionInfo {
        fatalError("Subclasses must override the intersect method.")
    }
}

class Sphere: Shape {
    var radius: Float
     init(pos: Vector, radius: Float, material: BaseMaterial) {
        self.radius = radius
        super.init(position: pos, material: material)
    }
    
    override func intersect(ray: Ray) -> IntersectionInfo {
        let info = IntersectionInfo()
        info.shape = self
        let dst = Vector.subtract(v:ray.position, w:self.position)
        let B = dst.dot(w:ray.direction)
        let C = dst.dot(w:dst) - (self.radius * self.radius)
        let D = (B * B) - C
        if D > 0 {
            info.isHit = true
            info.distance = (-B) - sqrt(D)
            info.position = Vector.add(v:ray.position, w:Vector.multiplyScalar(v:ray.direction, w:info.distance))
            info.normal = Vector.subtract(v:info.position, w:self.position).normalize()
            info.color = self.material.getColor(u: 0, v: 0)
        } else {
            info.isHit = false
        }
        return info
    }
    
    func toString() -> String {
        return "Sphere [position=\(self.position), radius=\(self.radius)]"
    }
}

class Plane: Shape {
    var d: Float
     init(pos: Vector, d: Float, material: BaseMaterial) {
        self.d = d
        super.init(position: pos, material: material)
    }
     override func intersect(ray: Ray) -> IntersectionInfo {
        let info = IntersectionInfo()
        let Vd = self.position.dot(w:ray.direction)
        if Vd == 0 {
            return info // no intersection
        }
        let t = -(self.position.dot(w:ray.position) + self.d) / Vd
        if t <= 0 {
            return info
        }
        info.shape = self
        info.isHit = true
        info.position = ray.position.add(w:ray.direction.multiplyScalar(w:t))
        info.normal = self.position
        info.distance = t
        if self.material.hasTexture {
            let vU = Vector(x:self.position.y, y:self.position.z, z:-self.position.x)
            let vV = vU.cross(w:self.position)
            let u = info.position.dot(w:vU)
            let v = info.position.dot(w:vV)
            info.color = self.material.getColor(u:u, v:v)
        } else {
            info.color = self.material.getColor(u: 0, v: 0)
        }
        return info
    }
    
    func toString() -> String {
        return "Plane [\(self.position), d=\(self.d)]"
    }
}


class Camera {
    var position: Vector
    var lookAt: Vector
    var equator: Vector
    var up: Vector
    var screen: Vector
    
    init(pos: Vector, lookAt: Vector, up: Vector) {
        self.position = pos
        self.lookAt = lookAt
        self.up = up
        self.equator = lookAt.normalize().cross(w: self.up)
        self.screen = self.position.add(w: self.lookAt)
    }
     func getRay(vx: Float, vy: Float) -> Ray {
        let pos = self.screen.subtract(w: self.equator.multiplyScalar(w: vx).subtract(w: self.up.multiplyScalar(w: vy)))
        pos.y = pos.y * -1
        let dir = pos.subtract(w: self.position)
        let ray = Ray(pos: pos, dir: dir.normalize())
        return ray
    }
     func toString() -> String {
        return "Ray []"
    }
}

class Scene {
    var camera: Camera
    var shapes: [Shape]
    var lights: [Light]
    var background: Background
     init() {
        self.camera = Camera(pos: Vector(x: 0, y: 0, z: -5),lookAt: Vector(x: 0, y: 0, z: 1),up: Vector(x: 0, y: 1, z: 0))
        self.shapes = []
        self.lights = []
        self.background = Background(color: Color(r: 0, g: 0, b: 0.5), ambience: 0.2)
    }
}

class Options {
    var canvasHeight: Int = 100
    var canvasWidth: Int = 100
    var pixelWidth: Int = 2
    var pixelHeight: Int = 2
    var renderDiffuse: Bool = false
    var renderShadows: Bool = false
    var renderHighlights: Bool = false
    var renderReflections: Bool = false
    var rayDepth: Int = 2
}


var checkNumber: Int = 0;

class Engine {
    var options: Options
     init(options: Options) {
        self.options = options
        self.options.canvasHeight /= self.options.pixelHeight
        self.options.canvasWidth /= self.options.pixelWidth
    }
     func setPixel(x: Int, y: Int, color: Color) {
        if x == y {
            checkNumber += color.brightness()
        }
    }
    
    func renderScene(scene: Scene) {
        checkNumber = 0
        let canvasHeight = self.options.canvasHeight
        let canvasWidth = self.options.canvasWidth
        for y in 0..<canvasHeight {
            for x in 0..<canvasWidth {
                let yp = Float(y) / Float(canvasHeight) * 2 - 1
                let xp = Float(x) / Float(canvasWidth) * 2 - 1
                let ray = scene.camera.getRay(vx: xp, vy: yp)
                let color = self.getPixelColor(ray: ray, scene: scene)
                self.setPixel(x: x, y: y, color: color)
            }
        }
        if checkNumber != 2321 {
            fatalError("Scene rendered incorrectly")
        }
    }
     func getPixelColor(ray: Ray, scene: Scene) -> Color {
        let info = self.testIntersection(ray: ray, scene: scene, exclude: nil)
        if info.isHit {
            let color = self.rayTrace(info: info, ray: ray, scene: scene, depth: 0)
            return color
        }
        return scene.background.color
    }
     func testIntersection(ray: Ray, scene: Scene, exclude: Shape?) -> IntersectionInfo {
        var hits = 0
        var best = IntersectionInfo()
        best.distance = 2000
        for shape in scene.shapes {
            if shape !== exclude {
                let info = shape.intersect(ray: ray)
                if info.isHit && info.distance >= 0 && info.distance < best.distance {
                    best = info
                    hits += 1
                }
            }
        }
        best.hitCount = hits
        return best
    }
     func getReflectionRay(P: Vector, N: Vector, V: Vector) -> Ray {
        let c1 = -N.dot(w: V)
        let R1 = Vector.add(v:Vector.multiplyScalar(v: N, w: 2 * c1), w: V)
        return Ray(pos: P, dir: R1)
    }
    
    func rayTrace(info: IntersectionInfo, ray: Ray, scene: Scene, depth: Int) -> Color {
        var color = Color.multiplyScalar(c1: info.color, f: scene.background.ambience)
        let shininess = pow(10, info.shape!.material.gloss + 1)
        for light in scene.lights {
            let v = Vector.subtract(v: light.position, w: info.position).normalize()
            if self.options.renderDiffuse {
                let L = v.dot(w: info.normal)
                if L > 0.0 {
                    color = Color.add(c1: color, c2: Color.multiply(c1: info.color, c2: Color.multiplyScalar(c1: light.color, f: L)))
                }
            }
            if depth <= self.options.rayDepth {
                if self.options.renderReflections && info.shape!.material.reflection > 0 {
                    let reflectionRay = self.getReflectionRay(P: info.position, N: info.normal, V: ray.direction)
                    let refl = self.testIntersection(ray: reflectionRay, scene: scene, exclude: info.shape)
                    if refl.isHit && refl.distance > 0 {
                        refl.color = self.rayTrace(info: refl, ray: reflectionRay, scene: scene, depth: depth + 1)
                    } else {
                        refl.color = scene.background.color
                    }
                    color = Color.blend(c1: color, c2: refl.color, w: info.shape!.material.reflection)
                }
            }
            var shadowInfo = IntersectionInfo()
            if self.options.renderShadows {
                let shadowRay = Ray(pos: info.position, dir: v)
                shadowInfo = self.testIntersection(ray: shadowRay, scene: scene, exclude: info.shape)
                if shadowInfo.isHit && shadowInfo.shape !== info.shape {
                    let vA = Color.multiplyScalar(c1: color, f: 0.5)
                    let dB = 0.5 * pow(shadowInfo.shape!.material.transparency, 0.5)
                    color = Color.addScalar(c1: vA, s: dB)
                }
            }
            if self.options.renderHighlights && !shadowInfo.isHit && info.shape!.material.gloss > 0 {
                let Lv = Vector.subtract(v: info.shape!.position, w: light.position).normalize()
                let E = Vector.subtract(v: scene.camera.position, w: info.shape!.position).normalize()
                let H = Vector.subtract(v: E, w: Lv).normalize()
                let glossWeight = pow(max(info.normal.dot(w: H), 0), shininess)
                color = Color.add(c1: Color.multiplyScalar(c1: light.color, f: glossWeight), c2: color)
            }
        }
        color.limit()
        return color
    }
}

func raytraceRun() {
    let scene = Scene()
    scene.camera = Camera(pos: Vector(x: 0, y: 0, z: -15),
                          lookAt: Vector(x: -0.2, y: 0, z: 5),
                          up: Vector(x: 0, y: 1, z: 0))
    scene.background = Background(color: Color(r: 0.5, g: 0.5, b: 0.5),
                                  ambience: 0.4)
    let sphere = Sphere(pos: Vector(x: -1.5, y: 1.5, z: 2),
                        radius: 1.5,
                        material: Solid(color: Color(r: 0, g: 0.5, b: 0.5),
                                        reflection: 0.3,
                                        refraction: 0.0,
                                        transparency: 0.0,
                                        gloss: 2.0))
    let sphere1 = Sphere(pos: Vector(x: 1, y: 0.25, z: 1),
                         radius: 0.5,
                         material: Solid(color: Color(r: 0.9, g: 0.9, b: 0.9),
                                         reflection: 0.1,
                                         refraction: 0.0,
                                         transparency: 0.0,
                                         gloss: 1.5))
    let plane = Plane(pos: Vector(x: 0.1, y: 0.9, z: -0.5).normalize(),
                            d: 1.2,
                            material: Chessboard(colorEven: Color(r: 1, g: 1, b: 1),
                                          colorOdd: Color(r: 0, g: 0, b: 0),
                                          reflection: 0.2,
                                          transparency: 0.0,
                                          gloss: 1.0,
                                          density: 0.7))
    scene.shapes.append(plane)
    scene.shapes.append(sphere)
    scene.shapes.append(sphere1)
    let light = Light(pos: Vector(x: 5, y: 10, z: -1),
                      color: Color(r: 0.8, g: 0.8, b: 0.8))
    let light1 = Light(pos: Vector(x: -3, y: 5, z: -15),
                       color: Color(r: 0.8, g: 0.8, b: 0.8),
                       intensity: 100)
    scene.lights.append(light)
    scene.lights.append(light1)
    let imageWidth = 100
    let imageHeight = 100
    let pixelSize = "5,5".split(separator: ",").compactMap { Int($0) }
    let renderDiffuse = true
    let renderShadows = true
    let renderHighlights = true
    let renderReflections = true
    let rayDepth = 2
    let options = Options()
    options.canvasWidth = imageWidth
    options.canvasHeight = imageHeight
    options.pixelWidth = pixelSize[0]
    options.pixelHeight = pixelSize[1]
    options.renderDiffuse = renderDiffuse
    options.renderHighlights = renderHighlights
    options.renderShadows = renderShadows
    options.renderReflections = renderReflections
    options.rayDepth = rayDepth
    let raytracer = Engine(options: options)
    raytracer.renderScene(scene: scene)
}

/**************************configure and run benchmark********************************/
let benchmarkRun = BenchmarkRun(name: "raytrace", doWarmup: true, doDeterministic: true, run: raytraceRun,minIterations: 600)
benchmarkRun.run()

