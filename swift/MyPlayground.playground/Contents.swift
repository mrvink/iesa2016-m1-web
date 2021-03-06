//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 01
print("Hello")

// 02 Variables
var myVariable = 42
myVariable = 52
var ffdg:Double


// 03 Constantes
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble :Double = 70

// 04 Conversion implicite
// 04 « 6 ».toInt()!
let label = "The width is"
let width = 94
let widthLabel = label + String(width)

// 05 String
let apples = 3
let oranges = 5
let appleSummaray = "I have \(apples) apples."
let fruits = "I have \(apples + oranges) fruits"


// 06 Array
var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water" //0-based indice
var occupations = [
    "Malcolm" : "Captain",
    "Kaylee" : "Mechanic" ]
occupations["Jayne"] = "Public Relations"

//shoppingList[10] = "too big?"
var strangeList = ["catfish", 33, 22.2]


//07 Empty array
var emptyArray = [String]()
emptyArray.append("Hello")
//emptyArray.append(33) //???
let emptyDictionnary = [String : Float]()


//07.bis
var emptyArray2 = [] //il s'agit ici d'un type NSarray
//emptyArray2.append("Hello") //il n'y a pas d'append sur les type NSarray
//emptyArray2.append(33)

//08






//CONTROL FLOW
//If else
var score = 0
var teamScore = 0

if score > 50 {
teamScore += 3
} else {
    teamScore += 1
}


//For

var individualScores = [2, 14, 21, 46]
for score in individualScores {
    
}



//OPTIONAL & AFFECTATION

// 09 myArray.count
let individualScores2 = [75, 43, 103, 87, 12]
var teamScore2 = 0
for score2 in individualScores2 {
    if score2 > 50 {
        teamScore2 += 3
    } else{
        teamScore2 += 1
    }
}
print(teamScore2)
print(individualScores2.count)


//10
var optionalString: String? = "Hello"
print(optionalString == nil)
var optionalName: String? = "John Appleseed" //nil
var greeting = "Hello!"
if let name = optionalName {
greeting = "Hello, \(name)"
}


//10.bis
var optionalString1: String? = "Hello"
print(optionalString1 == nil)
print(optionalString1)
var optionalString2: String?
print(optionalString2 == nil)
print(optionalString2)
var optionalString3: String
//print(optionalString3 == nil)
//print(optionalString2 == optionalString3)


print("optionalString1 = \(optionalString1)")
print("optionalString2 = \(optionalString2)")
//print("optionalString3 = \(optionalString3)")



//CONTROL FLOW

//11 Switch case
var vegetableComment :String
let vegetable = "red pepper"
switch vegetable{
case "cucumber","watercress":
    vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    vegetableComment = "Is it a spicy \(x)?"
default:
    vegetableComment = "Everything tastes good in soup."
}

print("Result : \(vegetableComment)")




//12 While / do
var n = 2
while n < 100 { n = n * 2 }
print(n)

var m = 2
repeat { m = m * 2 } while m < 100
print(m)


//13 For .. variantes
var firstForLoop = 0
for i in 0..<4 { firstForLoop += i }
print(firstForLoop)

var secondForLoop = 0
for var i = 0; i < 4; ++i { secondForLoop += i }
print(secondForLoop)

//FUNCTIONS & CLOSURES

//14 Fonction
func greet(name: String, day: String) -> Void {
     "Hello \(name), today is \(day)."
}
greet("Bob", day: "Tuesday")


// TUPLE
let min = 10
let max = 20
let value = 15
var range = (value, min, max)
print(range.1)


//15
func greetTuple(name: String, day: String) -> (String, String, String) {
    return (name, day,  "Hello \(name), today is \(day).")
}
var f = greetTuple("Bob", day: "Tuesday")
f.1

//TUPLE = name, day, result


//15
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if score > max { max = score } else if score < min { min = score }
        sum += score
    }
    return (min, max, sum)
}
let statistics = calculateStatistics([5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)


//16 Arguments variables
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers { sum += number }
    return sum
}
sumOf()
sumOf(42, 597, 12)

//17 Nested fonctions
func returnFifteen() -> Int {
    var y = 10
    func add() { y += 5 }
    add()
    return y
}
returnFifteen()


//20 Closure
var numbers = [22, 2, 15]

var v = numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

print(v)



//20.bis
var prenoms = ["Paul", "Olivia", "Lauryne"]

var p = prenoms.map({
    (prenom: String) -> String in
    return "Bonjour \(prenom)"
})

print(p)


var people = [(name:"Paul", age:20)]

var mm = people.map({
    (person: (String, Int)) -> Int in
    return person.1
})

print(mm)


//21 Closure
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)




//OBJETS ET CLASSES


