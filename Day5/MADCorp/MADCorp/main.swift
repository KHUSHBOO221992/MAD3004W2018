//
//  main.swift
//  MADCorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var emp1 = Employee()
emp1.empID = 101
emp1.empName = "Srijith"
emp1.basicPay = 5000
emp1.display()

var emp3 = Employee()
emp3.display()

var emp4 = Employee(ID: 104, nm: "Navneet", pay: 3409.89)
emp4.display()

var obj2 = PermanentEmployee()
obj2.empID = 102
obj2.empName = "Taun"
obj2.basicPay = 3000
obj2.vacationWeeks = 10
obj2.display()

var obj5 = PermanentEmployee()
obj5.display()

var obj6 = PermanentEmployee(eID: 106, eName: "Navjot", ePay: 1320.77, weeks: 1)
obj6.display()

var obj7 = Payroll(eID: 107, eNM: "Prabh", ePay: 2456.23, weeks: 6)
obj7.display()





