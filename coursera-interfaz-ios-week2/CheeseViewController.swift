//
//  CheeseViewController.swift
//  coursera-interfaz-ios-week2
//
//  Created by Daniel Garcia on 26/6/16.
//  Copyright © 2016 Daniel Garcia. All rights reserved.
//

import UIKit

class CheeseViewController: UIViewController {
        
    @IBOutlet weak var queso: UISegmentedControl!
    var pizza: Pizza!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func next(){        performSegueWithIdentifier("IngredientsViewControllerSegue", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "IngredientsViewControllerSegue"){
            
            pizza.cheese = self.queso.titleForSegmentAtIndex(queso.selectedSegmentIndex)
            
            let destinationVC = segue.destinationViewController as! IngredientsViewController
            
            destinationVC.pizza = self.pizza
        }
    }
}
