//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// 23 CREER UNE CLASSE
class Shape {
    var sidesCount = 0
    func getInfo() -> String {
        return "A shape with \(sidesCount) sides/"
    }
}


// 24 CREER UNE INSTANCE
var shape = Shape()
shape.sidesCount = 7
var shapeDescription = shape.getInfo()


// 25 CONSTRUCTEUR
class NamedShape {
    var sidesCount: Int = 0
    var name: String
    init(name: String) { self.name = name }
    func getInfo() -> String { return "\(sidesCount) sides" }
}

var carre = NamedShape(name: "drapeau")


// 26 HERITAGE / SOUS CLASSE
class Square : NamedShape {
    var sideLength: Double
    init(length: Double, name: String) {
        self.sideLength = length
        super.init(name: name)
        sidesCount = 4
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    override func getInfo() -> String {
        return "Square: L=\(sideLength)."
    }
}
let s = Square(length:5.2, name:"myS")
s.area()
s.getInfo()



// 27 ACCESSEURS
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    init(length: Double, name: String) {
        self.sideLength = length
        super.init(name: name)
        sidesCount = 3
}

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    override func getInfo() -> String {
        return "Length=\(sideLength)"
    }}
var triangle = EquilateralTriangle(
    length: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)


class Person {
    var name: String = ""
    var age: Int = 0

    func getName() -> String {
        return name
    }
    
    func setName(name: String) {
        self.name = name
    }
    
    func getAge() -> Int {
        return age
    }
    func setAge(age: Int) {
        self.age = age
    }
}


// 29 PARAMETRES

class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes times: Int) {
        count += amount * times
    }
}

var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)










