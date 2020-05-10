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
    let text: String
}
var commentCellData: [commentCell] = [

    commentCell(name: "Joana Silva", profileImage: UIImage(named: "joana"), text: "Muito difícil essa situação, minha filha está completando ano e procurei uma pessoa na cidade que fizesse bolo para pessoas com APLV e não achei. Eu mesma tive de fazer. "),
    commentCell(name: "João Albuquerque", profileImage: UIImage(named: "jose"), text: "Os sintomas do meu filho ao ingerir algum desses alimentos são muito fortes, tenho que levá-lo urgente ao médico.")
    
]
