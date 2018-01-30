//: Playground - noun: a place where people can play

import UIKit

//Array Declaration
var a = [ 10,20,30,40,50]
print("a[0] : \(a[0])")
print("a : ",a)


let j1 = [10,20]
print("j1 : " ,j1)


//USE METHODS TO ADD VARIOUS VALUES
var b = [Int]();
print("SIZE OF ARRAY B : \(b.count)")
b.append(100)
print("b[0] : \(b[0])")

b.append(1000)
print("b :",b)

b[0]=1000
print("b[0] : \(b[0])")

/*
b[2]=500
print("b : ", b)
print("SIZE OF ARRAY B : \(b.count)")
*/

//ASSIGNING THE DAFAULT VALUE
var n1 = [Int](repeating: 1, count: 3)
print("n1 ARRAY : \(n1)")

var n2 = [Int](repeating: 5, count: 3)
print("n2 ARRAY : \(n2)")

var nummerge = n1 + n2
print("NUMBER MERGE ARRAY : \(nummerge)")


//DECLARE TO STORE ANY DATATYPES VALUES
var c = [Any]()
print("SIZE OF ARRAY C : \(c.count)")
c.append(100)
c.append("BHATOIA")
c.append(64.34)
print("C ARRAY : \(c)")

var x = a[1...3]
for t in x{
    print("x : \(t)")
}


//STRING ARRAY AND FOR-EACH WITH (KEY,VALUE)
var groclist: [String] = ["Eggs" ,"Milk"]
for (index, value) in groclist.enumerated()
{
    print("item \(index): \(value)")
}

print("THE GROCERIES LIST CONTAINS \(groclist.count) items.")

if groclist.isEmpty
{
    print("THE LIST IS EMPTY.")
}
else
{
    print("THE LIST IS NOT EMPTY.")
}

groclist.append("Flour")
print("GROCLIST ARRAY :\(groclist)")

groclist += ["Chocolate Spread", "Cheese" , "Butter"]
print("GROCLIST ARRAY :\(groclist)")
//groclist[4...6] = ["Bananas", "Apples"]
groclist.insert("Maple Syrup", at: 0)
let maplesyrup = groclist.remove(at: 2)
let apples = groclist.removeLast()
print("GROCLIST ARRAY :\(groclist)")


//DECLARE SET IN SWIFT                 ()

var grades: Set<Character> = []
grades.insert("A")
grades.insert("B")
print("GRADES : \(grades)")
print("GRADES NO. OF ELEMENTS ", grades.count)

//var gradeType:Set <Any> = []                      (  GIVING HASHABLE ERROR)

var favgeneres: Set<String> = ["ROCK", "CLASSICAL" , "HOP-HOP"]
print("favgeneres : \(favgeneres)")


print("I have \(favgeneres.count) favourite music generes." )
if favgeneres.isEmpty
{
    print("AS far as music played, i'm good.")
}
else{
    print("I hAVE PERTICULAR MUSIC PREFERENCE")
}
favgeneres.insert("JAZZ")
print("favgeneres : \(favgeneres)")

if let removegeneres = favgeneres.remove("rock")
{
    print("\(removegeneres)? i'm over it.")
    
}
else{
    print("i never much cared for that.")
    
}
print("favgeneres : \(favgeneres)")
for genre in favgeneres.sorted(){
    print("\(genre)")
}

let odddig: Set = [1,3,5,7,9]
let evendig: Set = [0,2,4,6,8]
let singledigprimenum: Set = [2,3,5,7]

print(odddig.union(evendig).sorted())
print(odddig.intersection(evendig).sorted())
print(odddig.subtracting(singledigprimenum).sorted())
print(odddig.symmetricDifference(singledigprimenum).sorted())

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

print(houseAnimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of: houseAnimals))
print(farmAnimals.isDisjoint(with: cityAnimals))







