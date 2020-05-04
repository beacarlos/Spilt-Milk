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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(CollectionViewCell.nib(), forCellWithReuseIdentifier: CollectionViewCell.identifier())
        let search = UISearchController(searchResultsController: nil)
        self.navigationItem.searchController = search
        
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier(), for: indexPath) as! CollectionViewCell
    
        // Configure the cell
        cell.config(label: "teste", image: UIImage(named: "foodImage")!)
        return cell
    }

}
