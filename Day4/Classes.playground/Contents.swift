//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Classes and Structures

//declaring a structure

struct project{
    var title = ""
    var hours = 0
    
    func display(){
        print("Project Title : ",title)
        print("Total work hours required : ",hours)
    }
}

//Declaring instance of structure

var LMSProject = project(title: "Moodle",hours: 200)
print(LMSProject)

LMSProject.display()

LMSProject.hours = 300
print(LMSProject)

LMSProject.display()


//Class declaration

class Manager{
    var name : String = ""
    var productOwner : Bool = true
    var currentProjects = project()
}

//creating instance of class
let mgrCanada = Manager()
mgrCanada.name = "JK"
mgrCanada.productOwner = true
mgrCanada.currentProjects = project(title: "Sales Reporting", hours: 20)

print("mgrCanada Name : ",mgrCanada.name)
print("mgrCanada product Owner : ",mgrCanada.productOwner)
print("mgrCanada current Project Title : ",mgrCanada.currentProjects.title)
print("mgrCanada current project hours : ",mgrCanada.currentProjects.hours)

//structures are VALUE TYPES

struct address{
    var street = "265 Yorkland Blvd"
    var city = "North York"
    var postalCode = "M1H1Y1"
}

var lambton = address()
print("Lambton : ",lambton)

var cestar = lambton
//let cestar = lambton //raise error when change the parameter
print("Cestar : ",cestar)

cestar.street = "271 yorkland blvd"
cestar.postalCode = "M1H3Y3"
print("Cestar : ",cestar)

print("Lambton : ",lambton)

//classes are reference types
class Institute{
    var street = "265 Yorkland Blvd"
    var city = "North York"
    var postalCode = "M1H1Y1"
}

var myLambton = Institute()
print("myLambton street : ",myLambton.street)
print("myLambton city : ",myLambton.city)
print("myLambton postalCode : ",myLambton.postalCode)

var myCestar = myLambton
print("myCestar street : ",myCestar.street)
print("myCestar city : ",myCestar.city)
print("myCestar postalCode : ",myCestar.postalCode)

myCestar.street = "271 Yorkland Blvd"
myCestar.postalCode = "M3H3Y3"
print("myCestar street : ",myCestar.street)
print("myCestar postalCode : ",myCestar.postalCode)

print("myLambton street : ",myLambton.street)
print("myLambton postalCode : ",myLambton.postalCode)

//identical to ===
if myLambton === myCestar {
    print("lambton and cestar are same")
}
else{
    print("lambton and cestar are NOT same")
}


var yourCestar = Institute()
if yourCestar === myCestar {
    print("yourCestar and myCestar are same")
}
else {
    print("yourCestar and myCestar are not same")
}
