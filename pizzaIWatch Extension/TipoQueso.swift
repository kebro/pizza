//
//  TipoQueso.swift
//  coursera-interfaz-ios-week2
//
//  Created by Daniel García Morales on 10/7/16.
//  Copyright © 2016 Daniel García Morales. All rights reserved.
//

import WatchKit
import Foundation


class TipoQueso: WKInterfaceController {

    @IBOutlet var textQueso: WKInterfaceLabel!
    var pizza:PizzaW!
    var quesoActual:Float!=0
    var textoQueso:String!=""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        
        //let c=context as!PizzaW
        //prueba.setText(c.base)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func cambiarQueso(value: Float) {
        quesoActual=value
        if quesoActual==1 {
            textoQueso="Pequeña"
        }else if quesoActual==2{
            textoQueso="Mediana"
        }else{
            textoQueso="Grande"
        }
        textQueso.setText(textoQueso)
    }
    @IBAction func continuarQueso() {
        pushControllerWithName("PedidoPizza3", context: textoQueso)
    }
    /*override func contextForSegueWithIdentifier(segueIdentifier: String) ->
        AnyObject? {
            if segueIdentifier == "PedidoPizza2" {
                prueba.setText("Eiiii")
                return ["segue": "hierarchical",
                "data":"Passed through hierarchical navigation"]
            } else if segueIdentifier == "pagebased" {
                return ["segue": "pagebased",
                "data": "Passed through page-based navigation"]
            } else {
                prueba.setText("nada")
                return ["segue": "", "data": ""]
            }
    }*/
}
