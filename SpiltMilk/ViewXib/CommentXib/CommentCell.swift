//
//  CommentCell.swift
//  SpiltMilk
//
//  Created by Jhennyfer Rodrigues de Oliveira on 06/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var line: UIView!
//    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var commentText: UILabel!
    @IBOutlet weak var likeNumber: UILabel!
    
    // set the nib's name
    static func identifier() -> String{
        return "CommentCell"
    }
    
    // when nib starts this configurations will be applied
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImage.layer.cornerRadius = profileImage.frame.width/2
        line.layer.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
//        configureLikeButton(button: likeButton)
//        countLikes(numberOfLikes: likeNumber.text ?? "0")
    }
    
    // return created nib
    static func nib() -> UINib{
        return UINib(nibName: CommentCell.identifier(), bundle: nil)
    }
    
    // initialize nib components
    func configureCell(name:String, image: UIImage, text: String){
        nameLabel.text = name
        profileImage.image = image
        commentText.text = text
//        likeNumber.text = numOfLikes
    }
    @IBAction func likeButtonn(_ sender: UIButton) {
        
        sender.setImage(UIImage(systemName: "heart.fill"), for: .selected)
        sender.setImage(UIImage(systemName: "heart"), for: .normal)
        
        guard let likes = likeNumber.text, var totalDeLikes = Int(likes) else {return}
        
        if sender.isSelected {
            
            sender.isSelected = false
            totalDeLikes -= 1
            likeNumber.text = String(totalDeLikes)
            
        } else {
            
            sender.isSelected = true
            totalDeLikes += 1
            likeNumber.text = String(totalDeLikes)
        }
    }

}



