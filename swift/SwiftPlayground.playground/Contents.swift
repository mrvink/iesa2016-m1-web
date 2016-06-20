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
 
    enum Sex: Int {
        case Man
        case Woman
        case Other
        case Unknown
    }
    
    var name: String = ""
    var age: Int = 0
    var sexe: Sex = Sex.Unknown
    
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
    
    func getSex() -> Sex {
        return sexe
    }
    func setSex(sexe: Sex) {
        self.sexe = sexe
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




// 31 ENUM & RAWVALUE

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func getInfo() -> String {
        switch self {
        case .Ace: return "ace"
        case .Jack: return "jack"
        case .Queen: return"queen"
        case .King: return"king"
        default: return String(self.rawValue)
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue




// 34 STRUCTURE

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = ThreeOfSpades.simpleDescription






















