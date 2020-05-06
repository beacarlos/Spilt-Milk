//
//  ProfileViewController.swift
//  SpiltMilk
//
//  Created by Hiago Chagas on 03/05/20.
//  Copyright © 2020 Hiago Chagas. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    
    var user = UserProfile(userName: "João da Silva", email: "joaodasilva@icloud.com", password: "senhasecreta123")
    
    var editedUser: UserProfile?
    
    var oldPassword: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.placeholder = user.userName
        emailTextField.placeholder = user.email
        passwordTextField.placeholder = user.password
       
        let textFields: [UITextField]! = [userNameTextField, emailTextField, passwordTextField]
        textFields.forEach { configtextField(textField: $0) }
        func configtextField(textField: UITextField) {
            let bottomLine = UIView()
            textField.addSubview(bottomLine)
            bottomLine.translatesAutoresizingMaskIntoConstraints = false
            bottomLine.leadingAnchor.constraint(equalTo: textField.leadingAnchor).isActive = true
            bottomLine.trailingAnchor.constraint(equalTo: textField.trailingAnchor).isActive = true
            bottomLine.bottomAnchor.constraint(equalTo: textField.bottomAnchor).isActive = true
            bottomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
            bottomLine.backgroundColor = UIColor(red: 0.39, green: 0.70, blue: 0.73, alpha: 1.00)
            textField.borderStyle = .none
        }
    }
    override func viewDidLayoutSubviews() {
        userImageView.image = UIImage(named:"joao")
        userImageView.layer.cornerRadius = userImageView.frame.width / 2
    }
}

extension ProfileViewController{
    @IBAction func cancelToProfile(_ segue: UIStoryboardSegue) {
    
    }
    @IBAction func saveProfile(_ segue: UIStoryboardSegue){
        if(editedUser?.userName != ""){
            user.userName = editedUser?.userName as! String
        }
        if(editedUser?.email != ""){
            user.email = editedUser?.email as! String
        }
        if(editedUser?.password != "" && oldPassword == user.password){
            user.password = editedUser?.password as! String
        }
    viewDidLoad()
    }
 
}
