//
//  Arithmetic.swift
//  Day7_Protocols
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Arithmetic: ICalculate{
    
    var n1: Int
    var n2: Int
    var n3: Int
    
    required init(n1: Int, n2: Int, n3: Int){
        self.n1 = n1
        self.n2 = n2
        self.n3 = n3
    }
    /*
    func  calculate(){
        let result = self.n1 + self.n2
        print("Result = \(result)")
    }
 */
}
