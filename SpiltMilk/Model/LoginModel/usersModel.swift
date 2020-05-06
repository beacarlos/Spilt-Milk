//
//  usersModel.swift
//  SpiltMilk
//
//  Created by Hiago Chagas on 06/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import Foundation
//                                its the same from UserProfileModel
//struct User{
//    var userName: String
//    var email: String
//    var password: String
//    init(userName: String, email: String, password: String) {
//        self.userName = userName
//        self.email = email
//        self.password = password
//    }
//}
struct Users{
    static func getUsers() -> [User]{
        var users: [User] = []
        users.append(User(userName:"admin", email: "admin", password: "admin"))
        return users
    }
}
