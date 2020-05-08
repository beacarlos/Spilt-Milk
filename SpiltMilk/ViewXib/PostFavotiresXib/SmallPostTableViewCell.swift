//
//  SmallPostTableViewCell.swift
//  SpiltMilk
//
//  Created by Jessica Guiot on 06/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class SmallPostTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets
    @IBOutlet weak var usuarioImageView: UIImageView!
    @IBOutlet weak var nomeUsuarioLabel: UILabel!
    @IBOutlet weak var textoPostLabel: UILabel!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var commentButton: UIButton!
    
    
    //MARK: - IBActions
    
    
    @IBAction func favoritesButton(_ sender: UIButton) {
        
        sender.setImage(UIImage(systemName: "bookmark.fill"), for: .selected)
        sender.setImage(UIImage(systemName: "bookmark"), for: .normal)
        
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
        }
        
    }
    
    
    @IBAction func commentButton(sender: UIButton!){

    }
    
    @IBAction func likesButton(_ sender: UIButton) {
        
        
        sender.setImage(UIImage(systemName: "heart.fill"), for: .selected)
        sender.setImage(UIImage(systemName: "heart"), for: .normal)
        
        guard let likes = likesLabel.text, var totalDeLikes = Int(likes) else {return}
        
        if sender.isSelected {
            
            sender.isSelected = false
            totalDeLikes -= 1
            likesLabel.text = String(totalDeLikes)
            
        } else {
            
            sender.isSelected = true
            totalDeLikes += 1
            likesLabel.text = String(totalDeLikes)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.usuarioImageView.layer.cornerRadius = self.usuarioImageView.frame.size.width / 2
        
        cardView.layer.cornerRadius = 10
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 0.2
        cardView.layer.shadowOffset = CGSize(width: 0, height: 0)
        cardView.layer.shadowRadius = 4
        
    }
    
    func setPostData(nomeUsuario: String, imagemUsuario: UIImage, textoPost: String){
        
        self.nomeUsuarioLabel.text = nomeUsuario
        self.usuarioImageView.image = imagemUsuario
        self.textoPostLabel.text = textoPost
        
    }
    
    static func identifier() -> String {
        return "SmallPostTableViewCell"
    }
    
    static func nib() -> UINib {
        return UINib(nibName: SmallPostTableViewCell.identifier(), bundle: .main)
    }
    
}
