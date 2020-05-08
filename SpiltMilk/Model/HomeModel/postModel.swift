//
//  posts.swift
//  mockPosts
//
//  Created by Hiago Chagas on 29/04/20.
//  Copyright © 2020 Hiago Chagas. All rights reserved.
//

import Foundation
import UIKit

//struct Post{
//    var postType: Int
//    var username: String
//    var userPhoto: String
//    var date: String
//    var postImageName: UIImage?
//    var postDescription: String
//    var likesCount: Int
//
//    init(username: String, userPhoto: String, date: String, postImageName: String, postDescription: String,likesCount: Int, type: Int){
//        self.username = username
//        self.userPhoto = userPhoto
//        self.date = date
//        self.postImageName = UIImage(named: postImageName) ?? nil
//        self.postDescription = postDescription
//        self.likesCount = likesCount
//        self.postType = type
//    }
//}
//struct PostSection{
//    //inserir aqui a leitura do Json
//    static func getPosts() -> [Post]{
//        var posts = [Post]()
//        posts.append(Post(username: "João da Silva", userPhoto: "joao", date: "29/04/2020", postImageName: "post", postDescription: "kashdkajshdkajs dkajsdkajshdkajshda kajshdkas hdkajhsdkajshdka jsd",likesCount: 10, type: 1))
//        posts.append(Post(username: "Josefino Arruda", userPhoto: "joao", date: "19/04/2017", postImageName: "post", postDescription: "kashdkajshdkajs dkajsdkajshdkajshda kajshdkas hdkajhsdkajshdka jsd",likesCount: 10, type: 1))
//        posts.append(Post(username: "Marcos da Silva", userPhoto: "joao", date: "09/04/2020", postImageName: "post", postDescription: "kashdkajshdkajs dkajsdkajshdkajshda kajshdkas hdkajhsdkajshdka jsd",likesCount: 10, type: 1))
//        posts.append(Post(username: "Marcos da Silva", userPhoto: "joao", date: "09/04/2020", postImageName: "", postDescription: "kashdkajshdkajs dkajsdkajshdkajshda kajshdkas hdkajhsdkajshdka jsd",likesCount: 10, type: 0))
//
//
//        return posts
//    }
//}
//struct postCell{
//    let tipo: Int
//    let nomeUsuario: String
//    let imagemUsuario: UIImage
//    let textPost: String
//    let imagemPost: UIImage?
//}
//
//
//
//let cellData : [postCell] = [
//    postCell(tipo: 0, nomeUsuario: "Ana Maria", imagemUsuario: UIImage(named: "user1")!, textPost: "Os oito alimentos mais alergênicos são: leite de vaca, soja, ovo, trigo, peixe, frutos do mar, amendoim.", imagemPost: nil),
//    postCell(tipo: 1, nomeUsuario: "João Silva", imagemUsuario: UIImage(named: "user2")!, textPost: "Mudança nos costumes alimentares tem repercutido no estado nutricional das crianças e dos adolescentes.", imagemPost: UIImage(named: "post2")!),
//    postCell(tipo: 0, nomeUsuario: "Maria Joaquina", imagemUsuario: UIImage(named: "user3")!, textPost: "O bebê que se alimenta exclusivamente de leite materno até os seis meses de vida está protegido contra diversas doenças.", imagemPost: nil),
//    postCell(tipo: 1, nomeUsuario: "Calebe Matos", imagemUsuario: UIImage(named: "user4")!, textPost: "Receita Empada de liquidificador. Sem leite, sem soja, sem ovo e sem trigo.", imagemPost: UIImage(named: "post1")!),
//    postCell(tipo: 0, nomeUsuario: "Amanda Nunes", imagemUsuario: UIImage(named: "user5")!, textPost: "O consumo de alimentos pode levar o organismo a reagir de diferentes maneiras. Denomina-se reação adversa a um alimento, qualquer resposta clínica anormal seguida à ingestão de um alimento ou aditivo alimentar.", imagemPost: nil)
//]
//
