//
//  Ingredientes.swift
//  coursera-interfaz-ios-week2
//
//  Created by Daniel García Morales on 10/7/16.
//  Copyright © 2016 Daniel García Morales. All rights reserved.
//

import WatchKit
import Foundation


class Ingredientes: WKInterfaceController {
    
    var escogeJamon:Float!=0
    var escogePepperoni:Float!=0
    var escogePavo:Float!=0
    var escogeSalchicha:Float!=0
    var escogeAceituna:Float!=0
    var escogeCebolla:Float!=0
    var escogePimiento:Float!=0
    var escogePinya:Float!=0
    var escogeAnchoa:Float!=0
    
    @IBAction func accionJamon(value: Bool) {
        if value{
            escogeJamon = 1
        }else{
            escogeJamon = 0
        }
    }
    @IBAction func escogePepperoni(value: Bool) {
        if value{
            escogePepperoni = 1
        }else{
            escogePepperoni = 0
        }
    }
    
    @IBAction func escogePavo(value: Bool) {
        if value{
            escogePavo = 1
        }else{
            escogePavo = 0
        }
    }
    @IBAction func escogeSalchicha(value: Bool) {
        if value{
            escogeSalchicha = 1
        }else{
            escogeSalchicha = 0
        }
    }
    
    
    @IBAction func escogeAceituna(value: Bool) {
        if value{
            escogeAceituna = 1
        }else{
            escogeAceituna = 0
        }
    }
    @IBAction func escogeCebolla(value: Bool) {
        if value{
            escogeCebolla = 1
        }else{
            escogeCebolla = 0
        }
    }
    
    
    
    @IBAction func escogePimiento(value: Bool) {
        if value{
            escogePimiento = 1
        }else{
            escogePimiento = 0
        }
    }
    @IBAction func escogePinya(value: Bool) {
        if value{
            escogePinya = 1
        }else{
            escogePinya = 0
        }
    }
    @IBAction func escogeAnchoa(value: Bool) {
        if value{
            escogeAnchoa = 1
        }else{
            escogeAnchoa = 0
        }
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func continuarIngredientes() {
        var cuantos:Float = 0
        cuantos = escogeJamon + escogePepperoni + escogePavo + escogeSalchicha + escogeAceituna + escogeCebolla + escogePimiento + escogePinya + escogeAnchoa
        if cuantos > 0 && cuantos < 6 {
            pushControllerWithName("PedidoPizza4", context: "")
        }
    }

}