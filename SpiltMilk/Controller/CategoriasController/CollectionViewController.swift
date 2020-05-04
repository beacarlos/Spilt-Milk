//
//  CollectionViewController.swift
//  SpiltMilk
//
//  Created by Jhennyfer Rodrigues de Oliveira on 04/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"


class CollectionViewController: UICollectionViewController {

  //MARK: - Atributos
    
    let titulosCategorias = ["Cooking", "Health", "Education", "Products", "Diagnostics", "Experiences"]
    
    let imagensCategorias = [
        
        UIImage(named: "Cooking")!,
        UIImage(named: "Health")!,
        UIImage(named: "Education")!,
        UIImage(named: "Products")!,
        UIImage(named: "Diagnostics")!,
        UIImage(named: "Experiences")!
        
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(CollectionViewCell.nib(), forCellWithReuseIdentifier: CollectionViewCell.identifier())
        let search = UISearchController(searchResultsController: nil)
        self.navigationItem.searchController = search
        
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titulosCategorias.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier(), for: indexPath) as! CollectionViewCell
    
        // Configure the cell
        cell.config(label: titulosCategorias[indexPath.item], image: imagensCategorias[indexPath.item])
        print(indexPath.item)
        
        return cell
    }

}
