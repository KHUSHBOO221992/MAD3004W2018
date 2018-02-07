//
//  Addition.swift
//  Day7_Protocols
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Operation: Arithmetic{
    
    var oper: Character?
    
    /*
    init(oper: Character){
        
        self.oper = oper
    }*/
    
    override required init(n1: Int, n2: Int, n3: Int){
        super.init(n1: n1, n2: n2, n3: n3)
       
    }
    
    func calculate(){
        print("Calling function")
        let result = self.n1 + self.n2 + self.n3
        print("Addition is : ",result)
    }
    
}
