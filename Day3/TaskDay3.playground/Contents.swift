//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Que : Difference between dictionary and tuple
// Ans : Dictionary need key value pairs and Tuple don't need it.
//       Tuple can have different values and datatypes whereas dictionary can have only one datatype value at a time.

//------------------------------------------//

/*
[
    person{
        "firstName" : "HP"
        "lastName" : "Patel"
        "age" : 50
        "address" : {
            "street" : "265 yorkland blvd"
            "area" : "North York"
            "postal code" : "M1H1Y1"
        }
        "total amount" : 2000
    }
]
*/

var details = [String:AnyObject]()
details["street"] = "265 yorkland blvd" as AnyObject
details["area"] = "North York" as AnyObject
details["postal code"] = "M1H1Y1" as AnyObject

var info = [String:AnyObject]()
info["firstname"] = "HP" as AnyObject
info["lastname"] = "Patel" as AnyObject
info["age"] = 50 as AnyObject
info["address"] = details as AnyObject
info["total amount"] = 2000 as AnyObject

print("Profile : ",info)

//---------------------------------------//

//Factorial of given number using function

func factorial(of num: Int) -> Int {
    if num == 1
    {
        return 1
    }
    else {
        return num * factorial(of:num - 1)
    }
}

let f = 6
let result = factorial(of: f)
print("The factorial of \(f) is \(result)")
