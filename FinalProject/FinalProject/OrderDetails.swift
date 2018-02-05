//
//  OrderDetails.swift
//  FinalProject
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class OrderDetails 
{
    var orderId: Int?
    var productId: Int?
    var productName: String?
    var quantity: Int?
    var unitCost: Float?
    var subtotal: Float?
   
    init() {
        self.orderId = 0
        self.productId = 0
        self.productName = ""
        self.quantity = 0
        self.unitCost = 0
        self.subtotal = 0
    }
   
    init(oId: Int , oProId:Int , oProName:String , oQuantity:Int , oUnitCost:Float , oSubTotal:Float)
    {
        self.orderId = oId
        self.productId = oProId
        self.productName = oProName
        self.quantity = oQuantity
        self.unitCost = oUnitCost
        self.subtotal = oSubTotal
    }
    
    func calcPrice() {
        
    }
    
}




