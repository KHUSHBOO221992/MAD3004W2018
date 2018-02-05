//
//  ShippingInfo.swift
//  FinalProject
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class ShippinngInfo {
    var shippingID: Int?
    var shippingType: String?
    var shippingCost: Int?
    var shippingRegionID: Int?
    
    init() {
        self.shippingID = 0
        self.shippingType = ""
        self.shippingCost = 0
        self.shippingRegionID = 0
    }
    
    init(sShipID: Int, sShipType:String, sShipCost: Int, sShipRegionID: Int) {
        self.shippingID = sShipID
        self.shippingType = sShipType
        self.shippingCost = sShipCost
        self.shippingRegionID = sShipRegionID
    }
    
    func updateShippingInfo() {
        
    }
}

