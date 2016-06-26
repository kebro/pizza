//
//  SizeViewController.swift
//  coursera-interfaz-ios-week2
//
//  Created by Daniel Garcia on 26/6/16.
//  Copyright © 2016 Daniel Garcia. All rights reserved.
//

import UIKit

class SizeViewController: UIViewController {
    
    @IBOutlet var image:UIImageView!
    
    @IBOutlet weak var botonera: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "BaseViewControllerSegue"){
            
            let pizza: Pizza = Pizza()
            pizza.size = self.botonera.titleForSegmentAtIndex(botonera.selectedSegmentIndex)
            
            let destinationVC = segue.destinationViewController as! BaseViewController
            
            destinationVC.pizza = pizza
        }
    }

}
