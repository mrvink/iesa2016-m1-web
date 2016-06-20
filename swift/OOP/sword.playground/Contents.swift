//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


print("Swiftstub Running XCode 7.1 Swift 2")
//Runs automatically. Just start typing.
//See "About" for shortcuts

class Vehicule {
    var couleur
    func rouler() -> String {
        return "Je bouge !!!"
    }
}

class Avion : Vehicule {
    var alt_max : Double
    
    func voler() {}
}

class Moto : Vehicule {
    var nb_roue : Int
}

class Char : Vehicule {
    
}