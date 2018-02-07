//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//escaping closures

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
    }
}

let instance = SomeClass()
instance.doSomething()
print(instance.x)
// Prints "200"

completionHandlers.first?()
print(instance.x)
// Prints "100"

//===========================

//trailing closures

func somefunction(n:Int , closure: (Int) -> Void)
{
    closure(n * n * n)
}

somefunction(n : 11)
{ (cube) in
    print(cube)
}


//===========================

//Class

class Person{
    var firstName = "HP"
    var lastName = "Patel"
    var age = 50
    var totalAmount = 2000
    var locAdd = address()
}
struct address{
    var street = "265 yorkland blvd"
    var area = "North York"
    var postalCode = "M1H1Y1"
}

let pers = Person()
print("First name : ",pers.firstName)
print("Last name : ",pers.lastName)
print("Age : ",pers.age)
print("Total Amount : ",pers.totalAmount)
print("Street : ",pers.locAdd)



