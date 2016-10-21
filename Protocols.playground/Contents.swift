//: Playground - noun: a place where people can play

import UIKit

protocol TextDescription {
    var textDescription : String { get }
}


class Person:TextDescription {
    
    //properties
    var name: String
    var height: Double
    var favoriteFood: String
    
    //conforming to the protocol TextDescription
    var textDescription: String {
        return "Name: \(self.name) \nHeight: \(self.height) \nFavorite Food: \(self.favoriteFood)"
    }
    
    //init
    init(name: String, height: Double, favoriteFood: String) {
        self.name = name
        self.height = height
        self.favoriteFood = favoriteFood
    }
    
}

let jim = Person(name: "Jim", height: 64.0, favoriteFood: "Pasta")

print(jim.textDescription)


protocol PrettyDescription {
    
    var description: String { get }
    
}


class Animal:PrettyDescription {
    
    var name: String
    var height: Double
    var favoriteFood: String
    var description: String = " Animals are happiness"
    
    init(name: String, height: Double, favoriteFood: String) {
        self.name = name
        self.height = height
        self.favoriteFood = favoriteFood
    }
    
}

