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

shoppingList[10] = "too big?"
var strangeList = ["catfish", 33, 22.2]
