//
//  ViewController.swift
//  ShoppingCart
//
//  Created by Sky Apperley on 02/05/2018.
//  Copyright © 2018 Sky Apperley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    
    // dependences
    let cart = ShoppingEngine()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - buttons
    
    @IBAction func userDidWantToBuyApples(_ sender: UIButton) {
        cart.add(item: "Apple")
        let total = cart.calculateTotalOfProducts()
        totalLabel.text = String(total)
    }
    
    @IBAction func userDidWantToBuyOranges(_ sender: UIButton) {
        cart.add(item: "Orange")
        let total = cart.calculateTotalOfProducts()
        totalLabel.text = String(total)
    }
    

}

