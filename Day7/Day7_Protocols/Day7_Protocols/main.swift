//
//  main.swift
//  Day7_Protocols
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

var obj1 = TestA()
obj1.n1 = 20
obj1.display()
obj1.displayValue()

var obj2 : IDisplay = TestA()
obj2.display()

obj2 = obj1 as TestA
obj2.display()

var obj3 = TestB()
obj3.n1 = 30
obj3.n2 = 40
//obj3.display()
//obj3.displayValue()

var obj = obj3 as TestA
obj.display()

var objArith = Arithmetic(n1: 20, n2: 50, n3: 80)
//objArith.calculate()


var obj4 = Operation(n1: 50, n2:70, n3: 90)
obj4.calculate()

//using double extension
let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")

let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")

let aMarathon = 42.km + 195.km
print("A marathon is \(aMarathon) meters long")

//using String extension
var s = "Hello"
print("Hello is \(s.length) characters long")
print("Vowels : ",s.vowels)
print("Consonants : ",s.consonants)

let a = 4.Prime
print(a.primeNo())

