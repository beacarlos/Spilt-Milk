//
//  UserProfile.swift
//  SpiltMilk
//
//  Created by Hiago Chagas on 03/05/20.
//  Copyright © 2020 Hiago Chagas. All rights reserved.
//

import Foundation
struct UserProfile{
    var userName: String
    var email: String
    var password: String
    init(userName: String, email: String, password: String) {
        self.userName = userName
        self.email = email
        self.password = password
    }
}
