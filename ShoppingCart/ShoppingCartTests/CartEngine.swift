//
//  CartEngine.swift
//  ShoppingCartTests
//
//  Created by Sky Apperley on 02/05/2018.
//  Copyright © 2018 Sky Apperley. All rights reserved.
//

import XCTest

@testable import ShoppingCart

class CartEngine: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    let cart = ShoppingEngine()
    
    func testCartInitWithZero() {
        let result = cart.products.count
        XCTAssertEqual(result, 0)
    }
    
    func testAddAppleToCart() {
        cart.add(item: "Apple")
        let result = cart.products.count
        XCTAssertEqual(result, 1)
    }
    
    func testAddOrangeToCart() {
        cart.add(item: "Orange")
        let result = cart.products.count
        XCTAssertEqual(result, 1)
    }
    
    func testTotalOfCartIsValid() {
        cart.add(item: "Apple")
        cart.add(item: "Orange")
        let result = cart.totalOfProducts()
        XCTAssertEqual(result, 0.85)
    }
    
    

    
}
