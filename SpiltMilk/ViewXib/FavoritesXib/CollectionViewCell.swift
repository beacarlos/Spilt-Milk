//
//  CollectionViewCell.swift
//  SpiltMilk
//
//  Created by Jessica Guiot on 05/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    //MARK: -IBOutlets
    
    
    //MARK: -IBActions
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    static func identifier() -> String {
        return "CollectionViewCell"
    }
    
    static func nib() -> UINib {
        return UINib(nibName: CollectionViewCell.identifier(), bundle: nil)
    }
}
