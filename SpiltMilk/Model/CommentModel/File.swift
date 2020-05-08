//
//  CommentsModel.swift
//  SpiltMilk
//
//  Created by Jhennyfer Rodrigues de Oliveira on 07/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//
import UIKit
import Foundation

struct commentCell{
    let name: String
    let profileImage: UIImage!
    let numberOfLikes: String
    let text: String
}

let commentCellData: [commentCell] = [

    commentCell.init(name: "Joana", profileImage: UIImage(named: ""), numberOfLikes: "10", text: ""),
    commentCell.init(name: "Joao", profileImage: UIImage(named: ""), numberOfLikes: "10", text: ""),
    commentCell.init(name: "Joana", profileImage: UIImage(named: ""), numberOfLikes: "10", text: ""),
    commentCell.init(name: "Joana", profileImage: UIImage(named: ""), numberOfLikes: "10", text: ""),
    
]
