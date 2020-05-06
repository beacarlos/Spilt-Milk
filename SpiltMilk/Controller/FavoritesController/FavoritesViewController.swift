//
//  FavoritesViewController.swift
//  SpiltMilk
//
//  Created by Jessica Guiot on 05/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    //MARK: - Atributos
    
    let nomesUsuario = ["Ana Maria", "Maria Joaquina"]
    
    let imagensUsuario = [
        UIImage(named: "user1")!,
        UIImage(named: "user2")!
    ]
    
    let imagensPosts = [
        UIImage(),
        UIImage(named: "post")
    ]
    
    let textosPost = [
        
        "Os oito alimentos mais alergênicos são: leite de vaca, soja, ovo, trigo, peixe, frutos do mar, amendoim e castanhas.",
        
        "Diversos alimentos podem causar alergias alimentares em crianças."
    ]

    
    //MARK: - IBOutlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        collectionView.register(PostCollectionCell.nib(), forCellWithReuseIdentifier: PostCollectionCell.identifier())
        
    }
    

    //MARK: - Collection Data Source
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return nomesUsuario.count
    }
       
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let postCell = collectionView.dequeueReusableCell(withReuseIdentifier: PostCollectionCell.identifier(), for: indexPath) as! PostCollectionCell
        
        postCell.setPostData(nomeUsuario: nomesUsuario[indexPath.item], imagemUsuario: imagensUsuario[indexPath.item], imagemPost: imagensPosts[indexPath.item], textoPost: textosPost[indexPath.item] )
        
        return postCell
           
    }
}
