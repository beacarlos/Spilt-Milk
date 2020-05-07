//
//  LargePostTableViewCell.swift
//  SpiltMilk
//
//  Created by Jessica Guiot on 06/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class LargePostTableViewCell: UITableViewCell {

    
    @IBOutlet weak var usuarioLargeImageView: UIImageView!
    @IBOutlet weak var usuarioLargeLabel: UILabel!
    @IBOutlet weak var postLargeImageView: UIImageView!
    @IBOutlet weak var postTextLargeLabel: UILabel!
    @IBOutlet weak var likesLargeLabel: UILabel!
    @IBOutlet weak var cardLargeView: UIView!
    
    
    @IBAction func likesLargeButton(_ sender: UIButton) {
        
        sender.setImage(UIImage(systemName: "heart.fill"), for: .selected)
        sender.setImage(UIImage(systemName: "heart"), for: .normal)
        
        guard let likes = likesLargeLabel.text, var totalDeLikes = Int(likes) else {return}
        
        if sender.isSelected {
            
            sender.isSelected = false
            totalDeLikes -= 1
            likesLargeLabel.text = String(totalDeLikes)
            
        } else {
            
            sender.isSelected = true
            totalDeLikes += 1
            likesLargeLabel.text = String(totalDeLikes)
        }
    }
    
    
    
    @IBAction func favoritesLargeButton(_ sender: UIButton) {
    
        sender.setImage(UIImage(systemName: "bookmark.fill"), for: .selected)
        sender.setImage(UIImage(systemName: "bookmark"), for: .normal)
        
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
        }
    
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.usuarioLargeImageView.layer.cornerRadius = self.usuarioLargeImageView.frame.size.width / 2
        
        cardLargeView.layer.cornerRadius = 10
        cardLargeView.layer.shadowColor = UIColor.black.cgColor
        cardLargeView.layer.shadowOpacity = 0.2
        cardLargeView.layer.shadowOffset = CGSize(width: 0, height: 0)
        cardLargeView.layer.shadowRadius = 4
        
    }
    
    func setPostDataLarge(nomeUsuario: String, imagemUsuario: UIImage, imagemPost:UIImage, textoPost: String){
        
        self.usuarioLargeLabel.text = nomeUsuario
        self.usuarioLargeImageView.image = imagemUsuario
        self.postLargeImageView.image = imagemPost
        self.postTextLargeLabel.text = textoPost
        
    }
    
    static func identifier() -> String {
        return "LargePostTableViewCell"
    }
    
    static func nib() -> UINib {
        return UINib(nibName: LargePostTableViewCell.identifier(), bundle: .main)
    }
    
}



