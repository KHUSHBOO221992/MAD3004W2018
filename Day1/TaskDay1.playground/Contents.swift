//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var num : Int = 4
var num1 : Int = 1

if(num < 6){
    
    for i in 1...10{
        num1 = 5 * i
        print("5", "*", i, "=" , num1)
    }
}
else{
    var n : Int = num + 1
    
    for i in 1..<n{
        num1 = num1 * i
    }
    print("Factorial  of ",num," is : ", num1)
}

