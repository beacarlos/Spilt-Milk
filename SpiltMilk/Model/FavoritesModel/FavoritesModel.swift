//
//  FavoritesModel.swift
//  SpiltMilk
//
//  Created by Jessica Guiot on 06/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import Foundation
import UIKit

struct postCell{
    let tipo: Int
    let nomeUsuario: String
    let imagemUsuario: UIImage
    let textPost: String
    let imagemPost: UIImage?
}



var cellData : [postCell] = [
    postCell(tipo: 0, nomeUsuario: "Ana Maria", imagemUsuario: UIImage(named: "user1")!, textPost: "Os oito alimentos mais alergênicos são: leite de vaca, soja, ovo, trigo, peixe, frutos do mar, amendoim.", imagemPost: nil),
    postCell(tipo: 1, nomeUsuario: "João Silva", imagemUsuario: UIImage(named: "user2")!, textPost: "Mudança nos costumes alimentares tem repercutido no estado nutricional das crianças e dos adolescentes.", imagemPost: UIImage(named: "post2")!),
    postCell(tipo: 0, nomeUsuario: "Maria Joaquina", imagemUsuario: UIImage(named: "user3")!, textPost: "O bebê que se alimenta exclusivamente de leite materno até os seis meses de vida está protegido contra diversas doenças.", imagemPost: nil),
    postCell(tipo: 1, nomeUsuario: "Calebe Matos", imagemUsuario: UIImage(named: "user4")!, textPost: "Receita Empada de liquidificador. Sem leite, sem soja, sem ovo e sem trigo.", imagemPost: UIImage(named: "post1")!),
    postCell(tipo: 0, nomeUsuario: "Amanda Nunes", imagemUsuario: UIImage(named: "user5")!, textPost: "O consumo de alimentos pode levar o organismo a reagir de diferentes maneiras. Denomina-se reação adversa a um alimento, qualquer resposta clínica anormal seguida à ingestão de um alimento ou aditivo alimentar.", imagemPost: nil)
]
