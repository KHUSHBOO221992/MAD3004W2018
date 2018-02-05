//
//  Users.swift
//  FinalProject
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class User {
    var userID : String?
    var password : String?
    var loginStatus : String?
    
    func verifyLogin() -> Bool {
        return true
    }
    
    init() {
        userID = "1"
        password = ""
        loginStatus = ""
    }
    
    init(ID: String,pass: String, lstatus: String) {
        self.userID = ID
        self.password = pass
        self.loginStatus = lstatus
    }
    
}
