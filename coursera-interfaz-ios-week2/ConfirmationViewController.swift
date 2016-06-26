//
//  ConfirmationViewController.swift
//  coursera-interfaz-ios-week2
//
//  Created by Daniel Garcia on 26/6/16.
//  Copyright © 2016 Daniel Garcia. All rights reserved.
//
import UIKit

class ConfirmationViewController: UIViewController {
    @IBOutlet var sizeLabel: UILabel!
    @IBOutlet var baseLabel: UILabel!
    @IBOutlet var cheeseLabel: UILabel!
    @IBOutlet var ingredientsText: UITextView!
    
    @IBOutlet weak var dani: UILabel!
    
    var pizza: Pizza!
    
    override func viewDidLoad() {
        self.sizeLabel.text?.appendContentsOf(" \(pizza.size)")
        self.baseLabel.text?.appendContentsOf(" \(pizza.base)")
        self.cheeseLabel.text?.appendContentsOf(" \(pizza.cheese)")
        
        self.ingredientsText.text = pizza.ingredients.componentsJoinedByString("\n")
        
        pizza.toString()
    }
}
