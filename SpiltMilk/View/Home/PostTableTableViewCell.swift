//
//  PostTableViewCell.swift
//  mockPosts
//
//  Created by Hiago Chagas on 29/04/20.
//  Copyright © 2020 Hiago Chagas. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var postDescriptionLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //deixa a foto do usuário redonda
        userImageView.layer.cornerRadius = userImageView.frame.size.width / 2
        
        // arredonda os cantos da bgview
        bgView.layer.cornerRadius = 10
        
        
        //adiciona a sombra nos posts
        bgView.layer.shadowColor = UIColor.black.cgColor
        bgView.layer.shadowOpacity = 0.5
        bgView.layer.shadowOffset = CGSize(width: 0, height: 0)
        bgView.layer.shadowRadius = 4

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
