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
    
    // MARK: - calculations
    
    func calculateTotalOfProducts() -> Double {
        var total:Double = 0
        
        // apples
        total += caculateAppleTwoForOneDiscount()
        // oranges
        total += calcuateOrangeThreeForTwoDiscount()
        
        return total
    }
    
    func caculateAppleTwoForOneDiscount() -> Double {
        var total:Double = 0
        // filter apples only
        let apples = products.filter{ $0 == "Apple" }
        
        let noDiscount = apples.count % 2 // remainder
        var twoForOneCount = apples.count - noDiscount
        if twoForOneCount >= 2 {
            twoForOneCount = twoForOneCount / 2
        }
        // costs
        let disacountedApples = appleCost * Double(twoForOneCount)
        
        let payableApples = appleCost * Double(noDiscount)
        // total
        total += disacountedApples + payableApples
        return total
    }
    
    func calcuateOrangeThreeForTwoDiscount() -> Double {
        var total:Double = 0
        // filter apples only
        let oranges = products.filter{ $0 == "Orange" }
        let noDiscount = oranges.count % 3 // remainder
        var threeForOneCount = oranges.count - noDiscount
        let orangesToRemove = threeForOneCount / 3
        threeForOneCount -= orangesToRemove
        // costs
        let disacountedOranges = orangeCost * Double(threeForOneCount)
        
        let payableOranges = orangeCost * Double(noDiscount)
        // total
        total += disacountedOranges + payableOranges
        return total
    }
    
    // I know my time is up, but I am going to finish the test
    
}
