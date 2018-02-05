//
//  ShoppingCart.swift
//  FinalProject
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class ShoppingCart {
    
    var cartID: Int?
    var productID: Int?
    var quantity: Int?
    var dateAdded: Int?
    
    init() {
        cartID = 0
        productID = 0
        quantity = 0
        dateAdded = 0
    }
    
    init(sCartID:Int, sProductID: Int, sQuantity: Int, sDateAdded:Int) {
        self.cartID = sCartID
        self.productID = sProductID
        self.quantity = sQuantity
        self.dateAdded = sDateAdded
    }
    
    func addCartItem() {
        
    }
    
    func updateQuantity() {
        
    }
    
    func viewCardDetails() {
        
    }
    
    func checkOut() {
        
    }
}

