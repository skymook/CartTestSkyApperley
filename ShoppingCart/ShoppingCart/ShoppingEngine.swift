//
//  ShoppingCart.swift
//  ShoppingCart
//
//  Created by Sky Apperley on 02/05/2018.
//  Copyright © 2018 Sky Apperley. All rights reserved.
//

import Foundation

class ShoppingEngine {
    
    
    var products:[String] = []
    // cost of items
    let appleCost: Double = 0.60
    let orangeCost: Double = 0.25
    
    func add(item: String) {
        products.append(item)
    }
    
    
    func calculateTotalOfProducts() -> Double {
        var total:Double = 0
        
        total += caculateAppleTwoForOneDiscount()
//        for item in products {
//            if item == "Apple" {
//                total += appleCost
//            } else {
//                total += orangeCost
//            }
//        }
        
        return total
    }
    
    func caculateAppleTwoForOneDiscount() -> Double {
        var total:Double = 0
        // filter apples only
        let apples = products.filter{ $0 == "Apple" }
        
        let noDiscount = apples.count % 2 // remainder
        let twoForOneCount = apples.count - noDiscount
        
        // costs
        let disacountedApples = appleCost * Double(twoForOneCount - noDiscount)
        let payableApples = appleCost * Double(twoForOneCount/2)
        // total
        total += disacountedApples + payableApples
        return total
    }
    
}
