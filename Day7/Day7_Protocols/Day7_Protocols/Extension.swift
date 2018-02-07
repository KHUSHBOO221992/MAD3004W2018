//
//  Extension.swift
//  Day7_Protocols
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

extension Double
{
    var km: Double { return self * 1_000.0 }
    var m: Double { return self}
    var cm: Double{ return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}


//--------------String Extension----------------
extension String
{
    var length: Int{
        get{
            return self.count
        }
    }
    
    func contains(s: String) -> Bool
    {
        return true
    }
    
    var vowels: [String]
    {
        get
        {
            return  ["a", "e", "i", "o", "u"]
        }
    }
    
    var consonants: [String]
    {
        get
        {
            return ["b", "c" ,"d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
        }
    }
}



//---------TaskDay7--------------

//create an extension to Int type to find out that the number if prime or not

extension Int {
    
    var Prime : Int{
        get
        {
            return self
        }
    }
    
    func primeNo()
    {
        if Prime % 2 != 0
        {
            print("Prime Number")
        }
        else
        {
            print("Not Prime Number")
        }
    }
}

