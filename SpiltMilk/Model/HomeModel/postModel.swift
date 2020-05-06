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
    var likesCount: Int
    
    init(username: String, userPhoto: String, date: String, postImageName: String, postDescription: String,likesCount: Int){
        self.username = username
        self.userPhoto = userPhoto
        self.date = date
        self.postImageName = postImageName
        self.postDescription = postDescription
        self.likesCount = likesCount
    }
}
struct PostSection{
    //inserir aqui a leitura do Json
    static func getPosts() -> [Post]{
        var posts = [Post]()
        posts.append(Post(username: "João da Silva", userPhoto: "joao", date: "29/04/2020", postImageName: "post", postDescription: "kashdkajshdkajs dkajsdkajshdkajshda kajshdkas hdkajhsdkajshdka jsd",likesCount: 10))
        posts.append(Post(username: "Josefino Arruda", userPhoto: "joao", date: "19/04/2017", postImageName: "post", postDescription: "kashdkajshdkajs dkajsdkajshdkajshda kajshdkas hdkajhsdkajshdka jsd",likesCount: 10))
        posts.append(Post(username: "Marcos da Silva", userPhoto: "joao", date: "09/04/2020", postImageName: "post", postDescription: "kashdkajshdkajs dkajsdkajshdkajshda kajshdkas hdkajhsdkajshdka jsd",likesCount: 10))
        
        return posts
    }
}
