//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Classes

class Employee{
    var empID: Int?
    var empName: String?
    var basicPay: Double?
    
    //Initializers
    
    //Default
    init(){
        self.empID = 0
        self.empName = ""
        self.basicPay = 0.0
    }
    
    //Parameterized initializer
    init(ID: Int, nm: String, pay: Double){
        self.empID = ID
        self.empName = nm
        self.basicPay = pay
    }
    
    func display(){
        print("Employee Id : ",self.empID!)
        print("Employee Name : ",self.empName!)
        print("Basic Pay : ",self.basicPay!)
    }
    
    //deinitializer
    deinit {
        print("Employee object deinitialized")
    }
}

var emp1 = Employee()
emp1.empID = 101
emp1.empName = "Srijith"
emp1.basicPay = 5000
//emp1.display()

var emp3 = Employee()
emp3.display()

var emp4 = Employee(ID: 104, nm: "Navneet", pay: 3409.89)
emp4.display()


class PermanentEmployee : Employee {
    var vacationWeeks : Int?
    
    //default initializer
    override init() {
        super.init()
        self.vacationWeeks = 0
    }
    
    //parameterized initializer of subclass
    init(eID: Int, eName: String, ePay: Double, weeks: Int){
        super.init(ID: eID, nm: eName, pay: ePay)
        self.vacationWeeks = weeks
    }
 
    //only subclass can have overridden method
    
    override func display() {
        super.display()
        print("Vacation Weeks : ",vacationWeeks!)
        
    }
}

class Payroll : PermanentEmployee{
    var netPay: Double?{
    
        get{
            var vw = self.vacationWeeks!
            
            if vw > 5{
               return self.basicPay! - 100
            }
            else{
                return self.basicPay!
                
            }
            
        }
    }
    
    override init(){
        super.init()
      //  self.netPay = 0
    }
    
    init(eID: Int, eNM: String, ePay: Double, weeks: Int){
        super.init(eID: eID, eName: eNM, ePay: ePay, weeks: weeks)
        //self.netPay  = 0
    }
    
    override func display() {
        super.display()
      //  self.calculate()
        print("netPay : ",self.netPay!)
    }
    
  /*  func calculate(){
        var vw = self.vacationWeeks!
        vw = self.vacationWeeks!
        if vw > 5{
            self.netPay! = self.basicPay! - 100
        }
        else{
            self.netPay! = self.basicPay!
            
        }
    }
    */
}

var obj2 = PermanentEmployee()
obj2.empID = 102
obj2.empName = "Taun"
obj2.basicPay = 3000
obj2.vacationWeeks = 10
//obj2.display()

var obj5 = PermanentEmployee()
obj5.display()

var obj6 = PermanentEmployee(eID: 106, eName: "Navjot", ePay: 1320.77, weeks: 1)
obj6.display()

var obj7 = Payroll(eID: 107, eNM: "Prabh", ePay: 2456.23, weeks: 6)
//obj7.display()


//manipulate object array[]

var janPayroll = [Payroll]()
let noOfEmployees = 2

for i in 0..<2{
    janPayroll.append(Payroll(eID: 107, eNM: "JK", ePay: 5555.56, weeks: 7))
    janPayroll[i].display()
}



