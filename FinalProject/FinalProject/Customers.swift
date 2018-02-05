//
//  Customers.swift
//  FinalProject
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Customer : User {
    var customerName : String?
    var address : String?
    var email : String?
  //  var Password : String?
    var creditCardInfo : String?
    var shippingInfo : String?
  //  var userId : UInt32?
    
    override init() {
        super.init()
        self.customerName = ""
        self.address = ""
        self.email = ""
        self.creditCardInfo = ""
        self.shippingInfo = ""
    }
    
    init(cID: String, cPassword: String, cstatus: String, cName: String, cAddress: String, cEmail: String, cCreditInfo: String, cShippingInfo: String) {
        super.init(ID: cID, pass: cPassword, lstatus: cstatus)
        self.customerName = cName
        self.address = cAddress
        self.email = cEmail
        self.creditCardInfo = cCreditInfo
        self.shippingInfo = cShippingInfo
    }
  
    /*
    func register() {
        
        userId = arc4random()
        print("You userId is: ", userId!)
        print("Enter your name:")
        customerName = readLine()!
        print("Enter your address:")
        address = readLine()!
        print("Enter your Email:")
        email = readLine()!
        print("Set your Password")
        Password = readLine()!
        print("Enter your CreditCardInformation:")
        creditCardInfo = readLine()!
    }
    
    func login() {
        
        print("Enter Your UserId : ")
        let GetUserId = readLine()
        print("Enter Your Email : ")
        let GetEmail = readLine()
        print("Enter Your Password : ")
        let GetPassword = readLine()
        let VerifyLogin = User()
        
       // VerifyLogin.verifyLogin(GetUserId: GetUserId!, GetPassword: GetPassword!, GetEmail: GetEmail!)    }
    
    func updateProfile() {
    
    }
        */
    func displayData()
    {
        print("Customer ID : ",userID!)
        print("Customer Name : ",customerName!)
        print("Address : ",address!)
        print("Credit Information : ",creditCardInfo!)
    }
        
}
/*
 protocol IDisplay {
        func displayData()
}
*/
    



