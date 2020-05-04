//
//  RegisterController.swift
//  SpiltMilk
//
//  Created by Beatriz Carlos on 04/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class RegisterController: UIViewController {
    @IBOutlet weak var userImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userImageView.image = #imageLiteral(resourceName: "joao")
            userImageView.layer.cornerRadius = userImageView.frame.size.width / 2
//        userImageView.bounds = .null
    }
}
