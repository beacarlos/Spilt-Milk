//
//  posts.swift
//  mockPosts
//
//  Created by Hiago Chagas on 29/04/20.
//  Copyright © 2020 Hiago Chagas. All rights reserved.
//

import Foundation

struct Post{
    var username: String
    var userPhoto: String
    var date: String
    var postImageName: String
    var postDescription: String

    
    init(username: String, userPhoto: String, date: String, postImageName: String, postDescription: String){
        self.username = username
        self.userPhoto = userPhoto
        self.date = date
        self.postImageName = postImageName
        self.postDescription = postDescription
    }
}
struct PostSection{
    //var posts: [Post]
    //inserir aqui a leitura do Json
    static func getPosts() -> [Post]{
        var posts = [Post]()
        posts.append(Post(username: "João da Silva", userPhoto: "joao", date: "29/04/2020", postImageName: "post", postDescription: "kashdkajshdkajs dkajsdkajshdkajshda kajshdkas hdkajhsdkajshdka jsd"))
        posts.append(Post(username: "Josefino Arruda", userPhoto: "joao", date: "19/04/2017", postImageName: "post", postDescription: "kashdkajshdkajs dkajsdkajshdkajshda kajshdkas hdkajhsdkajshdka jsd"))
        posts.append(Post(username: "Marcos da Silva", userPhoto: "joao", date: "09/04/2020", postImageName: "post", postDescription: "kashdkajshdkajs dkajsdkajshdkajshda kajshdkas hdkajhsdkajshdka jsd"))
        
        return posts
    }
}

//MARK: - MOCK POST
//let description = "Meu bebê é um bebê muito bebê porque bebês são bebês. Além disso, eu gosto de bebês porque eles são bebês."
//
//var array: [Any] = []
//
//for _ in 0...3 {
//    array.append(Post(username: "João da Silva", userPhoto: "joao", date: "27/11/2020", postImageName: "post", postDescription: description))
//}
