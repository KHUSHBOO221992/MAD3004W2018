//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//print the string
print(str)
print("This is our String : \(str)",terminator:  " ")

//use seperator for seperating multiple lines
print("1","2","3","4","5",separator: "..")

//new line
print("1","2","3","4","5",separator: "\n")

//print("This is our string : \(str)",terminator: " ")

var n1 = 10
print("Number 1 :",n1, "String : ",str)

var n2 = 20
print("Number 2 : ",n2)

//print sum with variable
var sum = n1 + n2
print("Sum is :",sum)

//without variable
print("Sum = ",n1+n2)

/*
n1 = "test"
print("n1 : ",n1)
 */

//integer datatype
var a:Int = 10
print("a = ",a)

//string datatype
var greet:String = "Good Morning"
print("Greetings : ",greet)

//Float datatype
var a1:Float = 10.24
print("a = ",a1)

//emoji variable
//Ctrl+window+space on windows
//Ctrl+cmd+space on Mac
var emoji = "☺️"
print("It is a \(emoji) hour")

let pi = 3.14
//pi = 3.190
print("pi = ",pi)

//var pi = 10

//optional values
//let possibleNumber = "123" // "Hello"
//let convertedNumber:Int?

let myNum : Int? //optional
//myNum = 10
myNum = nil

if myNum != nil {
    print("myNum : ",myNum!)
}

else {
    print("myNum is Nil")
}

//type casting (optional vlaue)
let possibleNumber = "123"
let convertedNumber : Int?

convertedNumber = Int(possibleNumber)

if convertedNumber != nil {
    print("Converted Number" , convertedNumber!)
}
else {
    print("Converted Number is nil")
}

for i in 1...5{
    print("i = ",i)
}

for j in 1..<5 {
    print("j = ",j)
}

let languages : [String]
//array of string
languages = ["English", "Spanish", "French"]

for i in languages {
    print("language : ",i)
}

//sum
var answer : Int = 1

for _ in 1...5{
    answer += 5;
}
print("answer = ",answer)

//stride
var Interval:Int = 5
for i in stride(from: 0, to: 50, by: Interval) {
    print(i," ",terminator:" ")
}

/*
var itr1 : Int = 0

while (itr1 < 5) {
    //print("Value : ",itr1)
    itr1 += 1
}
*/

print(" ")

var j = 1

while (j < 5){
    //Value: 0
    
    print("Value of j is \(j)")
    j = j + 1

}

j = 5
repeat{
    print("Repeat : ",j)
    j = j + 2
}while(j <= 10)


//Factorial
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

/*
var num1 = 100

switch num1 {
    
case 100 :
    print("Value of num1 is 100")
    fallthrough
case 10,15 :
    print("Value of num1 is either 10 or 15")
    
case 5 :
    print("Value of num1 is 5")
    
default :
    print("Defalut case")
}

*/
