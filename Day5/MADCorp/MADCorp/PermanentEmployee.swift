//
//  PermanentEmployee.swift
//  MADCorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class PermanentEmployee : Employee {
    var vacationWeeks : Int?
    
    //default initializer
    override init() {
        super.init()
        self.vacationWeeks = 0
    }
    
    //parameterized initializer of subclass
    init(eID: Int, eName: String, ePay: Double, weeks: Int){
        super.init(ID: eID, nm: eName, pay: ePay)
        self.vacationWeeks = weeks
    }
    
    //only subclass can have overridden method
    
    override func display() {
        super.display()
        print("Vacation Weeks : ",vacationWeeks!)
        
    }
}
