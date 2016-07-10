//
//  Tamanyo.swift
//  coursera-interfaz-ios-week2
//
//  Created by Daniel García Morales on 10/7/16.
//  Copyright © 2016 Daniel García Morales. All rights reserved.
//

import WatchKit
import Foundation


class Tamanyo: WKInterfaceController {
    var tamanyoActual:Float=1
    var textoPizza:String=""
    
    @IBOutlet var tamanyoTexto: WKInterfaceLabel!
    @IBOutlet var tamanyoValor: WKInterfaceSlider!
    
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
    @IBAction func nuevoValorTamanyo(value: Float) {
        
        //var ingredients: NSArray!
        tamanyoActual=value
        
        if tamanyoActual==1 {
            textoPizza="Pequeña"
        }else if tamanyoActual==2{
            textoPizza="Mediana"
        }else{
            textoPizza="Grande"
        }
        tamanyoTexto.setText(textoPizza)
    }
    @IBAction func accionContinuar() {
        pushControllerWithName("PedidoPizza", context: textoPizza)
        
    }

}
