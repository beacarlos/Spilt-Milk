//
//  ProfileViewController.swift
//  SpiltMilk
//
//  Created by Hiago Chagas on 03/05/20.
//  Copyright © 2020 Hiago Chagas. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logoutButton: UIButton!
    
    //MARK: - Variables
    var user = User(userName: "João da Silva", email: "joaodasilva@icloud.com", password: "senha")
    var editedUser: User?
    var oldPassword: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.placeholder = user.userName
        emailTextField.placeholder = user.email
        passwordTextField.placeholder = user.password
        
        let textFields: [UITextField]! = [userNameTextField, emailTextField, passwordTextField]
        
        textFields.forEach { configtextField(textField: $0) }
        
        func configtextField(textField: UITextField) {
            textField.borderStyle = .none
        }
        
        logoutButton.backgroundColor = #colorLiteral(red: 0.3882352941, green: 0.7019607843, blue: 0.7333333333, alpha: 1)
        logoutButton.setTitleColor(.white, for: .normal)
        logoutButton.layer.cornerRadius = 20
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
            user.userName = (editedUser?.userName ?? "") as String
        }
        if(editedUser?.email != ""){
            user.email = (editedUser?.email ?? "") as String
        }
        if(editedUser?.password != "" && oldPassword == user.password){
            user.password = (editedUser?.password ?? "") as String
        }
        viewDidLoad()
    }
}
