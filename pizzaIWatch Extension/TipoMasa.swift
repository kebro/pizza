//
//  TipoMasa.swift
//  coursera-interfaz-ios-week2
//
//  Created by Daniel García Morales on 10/7/16.
//  Copyright © 2016 Daniel García Morales. All rights reserved.
//

import WatchKit
import Foundation


class TipoMasa: WKInterfaceController {
    var masaActual:Float=1
    var textMasa:String=""
    var pizza: PizzaW!

    @IBOutlet var textoMasa: WKInterfaceLabel!
    @IBOutlet var tipoMasa: WKInterfaceSlider!
    
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

    @IBAction func cambiarMasa(value: Float) {
        masaActual=value
        if masaActual==1 {
            textMasa="Pequeña"
        }else if masaActual==2{
            textMasa="Mediana"
        }else{
            textMasa="Grande"
        }
        textoMasa.setText(textMasa)
        
        //pizza.base = textMasa
        //textoMasa.setText(pizza.base)
        
        //let pizza: PizzaW = PizzaW(si: textoPizza, ba: "", ch: "")
        
        //tamanyoTexto.setText(pizza.size)
        
    }
    @IBAction func continuarMasa() {
        pushControllerWithName("PedidoPizza2", context: textoMasa)
    }
    
    
}
