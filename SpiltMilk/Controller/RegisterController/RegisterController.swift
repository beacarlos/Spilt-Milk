//
//  RegisterController.swift
//  SpiltMilk
//
//  Created by Beatriz Carlos on 04/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import Foundation
import UIKit

class RegisterController: UIViewController {
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet var textFields: [UITextField]!
    
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    @IBOutlet weak var cSenhaTextField: UITextField!
    @IBOutlet weak var checkBox: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // User image view
        userImageView.image = #imageLiteral(resourceName: "RegisterLogo")
        
        signUpButton.layer.cornerRadius = signUpButton.frame.height / 3
        
//        configureTextField()
        configtextField(textField: nomeTextField)
        configtextField(textField: emailTextField)
        configtextField(textField: senhaTextField)
        configtextField(textField: cSenhaTextField)

    }
    
    func configureTextField() {
        let bottomLine = CALayer()
        for textField in textFields {
            bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 2, width: textField.frame.width, height: 2)
            bottomLine.backgroundColor = UIColor(red: 0.39, green: 0.70, blue: 0.73, alpha: 1.00).cgColor
            textField.borderStyle = .none
            textField.layer.addSublayer(bottomLine)
        }
    }
    
    func configtextField(textField: UITextField) {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 2, width: textField.frame.width, height: 2)
        bottomLine.backgroundColor = UIColor(red: 0.39, green: 0.70, blue: 0.73, alpha: 1.00).cgColor
        textField.borderStyle = .none
        textField.layer.addSublayer(bottomLine)
    }

    @IBAction func checkBoxAction(_ sender: UIButton) {
        let uncheck = #imageLiteral(resourceName: "uncheck")
        let check = #imageLiteral(resourceName: "check")
        
        if sender.isSelected == true {
            checkBox.setImage(check, for: .normal)
            sender.isSelected = false
        } else {
            checkBox.setImage(uncheck, for: .normal)
            sender.isSelected = true
        }
        
    }
    
//    @IBAction func checkBoxAction(_ sender: UIButton) {
//        let image = UIImage(named: "checkmark.square.fill")
//        if sender.isSelected == true {
//            checkBox.setImage(image, forState: .normal)
//            sender.isSelected = false
//        } else {
//            checkBox.setImage(UIImage(named: "square"), for: .normal)
//            sender.isSelected = true
//        }
//        
//    }
}

