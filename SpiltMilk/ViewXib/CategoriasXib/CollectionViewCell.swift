//
//  CollectionViewCell.swift
//  SpiltMilk
//
//  Created by Jhennyfer Rodrigues de Oliveira on 04/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    //MARK: - IBOutlets
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardImage: UIImageView!
    
    static func identifier() -> String{
        return "CollectionViewCell"
    }
    
    func config(label: String, image: UIImage){
        cardLabel.text = label
        cardImage.image = image
    }
    static func nib() -> UINib{
        return UINib(nibName: CollectionViewCell.identifier(), bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 12
    }
}
