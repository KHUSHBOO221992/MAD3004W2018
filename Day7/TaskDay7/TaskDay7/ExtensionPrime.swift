//
//  ExtensionPrime.swift
//  TaskDay7
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//---------TaskDay7--------------

//create an extension to Int type to find out that the number if prime or not

extension Int {
    
    var Prime : Int{
        get
        {
            return self
        }
        
    }

    func PrimeNo(_ number : Int) -> Bool
    {
        for n in 2..<number
        {
            if( number % n == 0)
            {
                print("Not Prime Number")
                return false
            }
        }
        print("Prime Number")
        return true
    }
}

