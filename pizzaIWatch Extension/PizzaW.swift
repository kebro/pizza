//
//  PizzaW.swift
//  coursera-interfaz-ios-week2
//
//  Created by Daniel García Morales on 10/7/16.
//  Copyright © 2016 Daniel García Morales. All rights reserved.
//

import WatchKit
import Foundation


class PizzaW: NSObject {
    var size: String!
    var base: String!
    var cheese: String!
    //var ingredients: NSArray!
    
    init(si:String, ba:String, ch:String){
        size = si
        base = ba
        cheese = ch
        //ingredients = ing
    }
    
    /*func toString(){
        print("size: \(size)\nbase: \(base)\ncheese: \(cheese)\ningredients: \(ingredients.componentsJoinedByString(", "))")
    }*/
}
