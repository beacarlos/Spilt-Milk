//
//  PostCollectionCell.swift
//  SpiltMilk
//
//  Created by Jessica Guiot on 05/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class PostCollectionCell: UICollectionViewCell {
    //MARK: - IBOutlets 
    @IBOutlet weak var usuarioImageView: UIImageView!
    @IBOutlet weak var nomeUsuarioLabel: UILabel!
    @IBOutlet weak var postImageLabel: UIImageView?
    @IBOutlet weak var postTextLabel: UILabel!
    @IBOutlet weak var quantidadeLikesLabel: UILabel!
    
    
    //MARK: - IBActions
    @IBAction func buttonFavoritos(_ sender: UIButton) {
        sender.setImage(UIImage(systemName: "bookmark.fill"), for: .selected)
        sender.setImage(UIImage(systemName: "bookmark"), for: .normal)
        
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true 
        }
    }
    
    @IBAction func buttonLikes(_ sender: UIButton) {
        sender.setImage(UIImage(systemName: "heart.fill"), for: .selected)
        sender.setImage(UIImage(systemName: "heart"), for: .normal)
        
        guard let likes = quantidadeLikesLabel.text, var totalDeLikes = Int(likes) else {return}
        
        if sender.isSelected {
            sender.isSelected = false
            totalDeLikes -= 1
            quantidadeLikesLabel.text = String(totalDeLikes)
        } else {
            sender.isSelected = true
            totalDeLikes += 1
            quantidadeLikesLabel.text = String(totalDeLikes)
        }
    }
    
    //MARK: - Métodos.
    override func awakeFromNib() {
        super.awakeFromNib()
        self.usuarioImageView.layer.cornerRadius = self.usuarioImageView.frame.size.width / 2
    }
    
    func setPostData(nomeUsuario: String, imagemUsuario: UIImage, imagemPost: UIImage?, textoPost: String){
        self.nomeUsuarioLabel.text = nomeUsuario
        self.usuarioImageView.image = imagemUsuario
        self.postTextLabel.text = textoPost
        
        if let _ = imagemPost {
            self.postImageLabel?.image = imagemPost
        } else {
            self.postImageLabel?.isHidden = true
        }
    }
    
    //MARK: - Configurações XIB.
    static func identifier() -> String {
        return "PostCollectionCell"
    }
    
    static func nib() -> UINib {
        return UINib(nibName: PostCollectionCell.identifier(), bundle: nil)
    }
}
