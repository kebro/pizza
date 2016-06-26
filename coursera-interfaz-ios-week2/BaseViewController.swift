//
//  BaseViewController.swift
//  coursera-interfaz-ios-week2
//
//  Created by Daniel Garcia on 26/6/16.
//  Copyright © 2016 Daniel Garcia. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet var image:UIImageView!
    
    @IBOutlet weak var masa: UISegmentedControl!
    var pizza: Pizza!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "CheeseViewControllerSegue"){
            
            pizza.base = self.masa.titleForSegmentAtIndex(masa.selectedSegmentIndex)
            
            let destinationVC = segue.destinationViewController as! CheeseViewController
            
            destinationVC.pizza = self.pizza
        }
    }
}
