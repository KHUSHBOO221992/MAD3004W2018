//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//assign nil value to string
/*
let var1 = String()
var1 = nil
print(var1)
*/

import Foundation

//Dictionary

var namesOfInteger = [Int: String]() //nameOfIntegers is an empty [Int: String] dictonary
namesOfInteger[16] = "Sixteen" //namesOfIntegers now contains 1 key-value pair

print("namesOfIntegers : \(namesOfInteger)")

namesOfInteger[28] = "Twenty Eight"
print("dictonary contains \(namesOfInteger.count) elements")
print("dictonary : ",namesOfInteger)

namesOfInteger = [:] //namesOfInteger is once again an empty dictonary of type [Int : Stirng]

print("dictonary contains \(namesOfInteger.count) elements")
print("namesOfInteger : ",namesOfInteger)

if namesOfInteger.isEmpty{
    print("Dictonary is empty")
}
else{
    print(namesOfInteger)
}

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print("airports : \(airports)")
print("The airports dictionary contains \(airports.count) items.") //prints "The airports dictionary contains 2 items."

airports["LHR"] = "London Heathrow" //the value for "LHR" has been changed to "Lonadon Heathrow"

airports["YYZ"] = "TP International"
airports["AMD"] = "SVP International"
print("airports : ",airports)

let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB")

print("airports :",airports)

print("The Old value for DUB was \(oldValue).") //Prints "The old value for DUB was Dublin."

if let airportName = airports["AMD"]{
    print("The name of the airport is \(airportName).")
}
else{
    print("That airport is not in the airport dictionary.")
}

airports["Mars"] = "Range Rover" //"Apple International" is not the real airport for APL, so delete it
print(airports)
airports["Mars"] = nil //APL has now been removed from the dictionary
print("airports : \(airports)")

if let removedValue = airports.removeValue(forKey: "Dub"){
    print("The removed airport's name is \(removedValue).")
}
else{
    print("The airports dictionary does not contain a value for DUB.")
} //Prints "The removed airport's name is Dublin Airport."

for airportCode in airports.keys {
    print("Airport code : \(airportCode)")
}

for airportName in airports.values{
    print("Airport name : \(airportName)")
}

let airportCodes = [String](airports.keys) //airportCodes is ["YYZ", "LHR"]
print("airportCodes : \(airportCodes)")

let airportNames = [String](airports.values) //airportNames is ["Toronto Pearson", "London Heathrow"]
print("airportNames : \(airportNames)")


//<KEY, VALUE> pairs

var d1 : Dictionary<String, String> = ["India":"Hindi", "Canada":"English"]
print(d1)
print(d1.description)
print(d1["India"]!)
print(d1["Canada"]!)
print(d1["USA"])

d1["China"] = "Mandarin"

for (k,v) in d1{
    print("\(k) -> \(v)")
}

d1["Canada"] = "French"
for(k,v) in d1{
    print("\(k) -> \(v)")
}

var d2 = ["India":"Hindi", "Canada":"English"]
for(k,v) in d2{
    print("\(k) -> \(v)")
}

//Dictionary with any values type
var d3 = [String: AnyObject]()
d3["firstName"] = "HP" as AnyObject
d3["lastName"] = "Patel" as AnyObject
d3["age"] = Int(50) as AnyObject
d3["Salary"] = nil
print("d3",d3)

//Getting as a Key, Values
for (k,v) in d3{
    print("\(k) -> \(v)")
}

//Declaring tuples
var x = (10,20,"Patel")
print(x.0)
print(x.1)
print(x.2)

let http404Error = (404, "Not Found")
print(http404Error)

let(statusCode, statusMessage) = http404Error
print("statusCode : ",statusCode)
print("statusMessage : ",statusMessage)

let(codeOnly, _) = http404Error
print("codeOnly : ",codeOnly)

let errorDescription = (Code: 404, Message: "Not Found")
print(errorDescription.Code, errorDescription.Message)


//working with functions

//Simple declaration
func add()
{
    print("I am in User Defined Function")
}

add()
print("hello")

func add(n1:Int, n2:Int){
    var sum : Int
    sum = n1 + n2
    print("sum : ",sum)
}

add(n1:10,n2:20)
//add(10,20) gives error
//add(n2:30,n1:40) Argument 'n1' must precede argument 'n2'

//Single Parameter
func welcome(name:String)
{
    print("Hello, \(name)")
}
welcome(name: "Himauli")

//Making parameter lable optional using _
func sub(a:Int, _ b:Int)
{
    let c = a - b
    print("Subtraction : \(c)")
}
sub(a: 30, 20)

//Single return type


//Multi return values and define new label name
func swipe(number1 a: Int, b: Int) -> (Int,Int)
{
    //function parameters are constants by default
    //var temp = a
    //a = b
    //b = temp
    return(b,a)
}

var (a,b) = swipe(number1: 10, b: 20)
print("a: \(a), b: \(b)")
var (_, c) = swipe(number1: 10, b: 20)
print("c: \(c)")

//linout concept
func swipe(aa: inout Double, bb: inout Double)
{
    let temp = aa
    aa = bb
    bb = temp
}

var w = 8.0, y = 9.0
swipe(aa:&w , bb:&y )
//swipe(aa: &10,bb: &12.4)
print("w  : \(w), y : \(y)")

//Default parameter
func simpleInterest(amount:Double, noOfYears: Double, rate:Double = 5.0) -> Double
{
    let si = amount * rate * noOfYears / 100
    return si
}

print("simple interest : \(simpleInterest(amount: 1000, noOfYears: 5))")
print("Simple interest : \(simpleInterest(amount: 1000, noOfYears: 5, rate: 10))")

/*
func si(amount:Double, _ noOfYears: Double)
{
    
}
*/

//Variadic Parameters
func display(n:Int...)
{
    for i in n{
        print(i)
    }
}

display(n: 1,2,3,4,5)
display(n: 10,20,30)

//Passing array as parameter

func display(numberValues:Int, parameters:[Int]...)
{
    print("Number of Values \(numberValues)")
    for i in parameters{
        print("i  :\(i)")
    }
}
var arr = [1,2,3,4,5]
display(numberValues:3, parameters:arr,arr,arr)

//sum of two array
func display(arrayList:[Int]...) -> [Int]
{
    var array1 = arrayList[0]
    var array2 = arrayList[1]
    var result = [Int]()
    
    if array1.count == array2.count
    {
        for i in 0..<array1.count
        {
            result.append(array1[i] + array2[i])
        }
    }
    return result
}

var a1 = [1,2,3,4,5]
var a2 = [10,11,12,13,14]
var a3 = [display(arrayList:a1,a2)]
print(a1)
print(a2)
print(a3)

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
