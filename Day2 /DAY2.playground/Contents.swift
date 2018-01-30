//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print(str)



// DISPLAY MULTILINE STRING
let strOne = """
This is First Line
This is another Line
This is one more line
"""

print(strOne)




// DISPLAY MOODS USING UNICODE SEQUENCE
var moodswings = ""
let heart = "\u{1F60C}"
moodswings = "zipper-mouth"
if moodswings.isEmpty {
    print("let me sleep")
}
else {
    print(heart)
}

moodswings += "cheerful joyful"
print(moodswings)

//heart += "be happy"





//PRINTING FIRSTNAME WITH INITIALS & COUNTING HOW MANY CHARACTER NAME IS HAVING USING APPEND
var fname = String()
fname = "KHUSHBOO"
print(fname)

for i in fname {
    print(i)
}

let initial : Character = "B"
fname.append(initial)

print(fname)

print("First name is \(fname) which is \(fname.count) characters long.")




//OTHER METHOD USING APPEND
fname = fname + " BHATOIA"
print(fname)




//USING INDEXSES TO DISPLAY SPECIFIED NUMBER OF LOCATION
print("START INDEX:",fname[fname.startIndex])
print("BEFORE END INDEX:", fname[fname.index(before: fname.endIndex)])
print("AFTER START INDEX:", fname[fname.index(after: fname.startIndex)])
print("5TH CHARACTER:", fname[fname.index(fname.startIndex,offsetBy:4)])
print("3rd FROM LAST CHARACTER:", fname[fname.index(fname.endIndex,offsetBy: -3)])




//PRINT SPECIFIC LOCATION USING INDEX
var idx = fname.index(fname.startIndex,offsetBy : 3)
print("FOURTH CHARACTER:",fname[idx])



// USING INDEX WHILE INSERTING STRING INTO STRING
var lang = "Swift"
print("LANGUAGE :",lang)


//TO INSERT STRING
lang.insert("!",at: lang.endIndex)
print("LANGUAGE :",lang)


//TO REMOVE ANOTHER STRING INTO EXISTING STRING
lang.insert(contentsOf: "java",at: lang.endIndex)
print("LANGUAGE :",lang)


//TO INSERT SOME CONTENT TO THE STRING
lang.insert(contentsOf: " is nice than ",at: lang.index(lang.startIndex,offsetBy: 6))
print("LANGUAGE CONTENTSOF :",lang)


//TO REMOVE CHARACTER FROM THE STRING
lang.remove(at: lang.index(before: lang.endIndex))
print("LANGUAGE REMOVE:",lang)

//TO REMOVE RANGE FROM THE STRING
let range = lang.startIndex..<lang.endIndex
lang.removeSubrange(range)
print("Language Remove Subrange : ",lang)

//
let greeting = "Happy Holidays!"
let index = greeting.index(of: " ") ?? greeting.endIndex
let start = greeting[..<index]
let newgreet = String(start)

print("Sub String : ", newgreet)


//COMPARISON OF TWO STRING WILL DISPLAY EITHER EQUAL OR NOT
print("string in uppercase :",newgreet.uppercased())

if(newgreet == newgreet.uppercased()){
    print("EQUAL")
}
else{
    print(" NOT EQUAL")
}

//CHECK FOR THE NIL VALUE OR EMPTY VALUE
var grade : String?                      //OPTIONAL
//grade = "A"
let fgrade = grade ?? "f"

if(fgrade.isEmpty){
    print("NOT GRADED YET")
}
else{
    print("Grade is:",fgrade)
}



