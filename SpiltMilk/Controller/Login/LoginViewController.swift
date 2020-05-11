//
//  LoginViewController.swift
//  SpiltMilk
//
//  Created by Hiago Chagas on 05/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var createAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textFields: [UITextField]! = [emailTextField, passwordTextField]
        textFields.forEach { configtextField(textField: $0) }
        
        loginButton.backgroundColor = UIColor(red: 99/255, green: 179/255, blue: 187/255, alpha: 1.00)
        loginButton.layer.cornerRadius = 15
        passwordTextField.isSecureTextEntry = true
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(sender:)), name: UIResponder.keyboardWillShowNotification, object: nil);
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(sender:)), name: UIResponder.keyboardWillHideNotification, object: nil);
        self.hideKeyboardWhenTappedAround()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(LoginViewController.dismissKeyboard)))
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    @objc func keyboardWillShow(sender: NSNotification){
        self.view.frame.origin.y = -150
    }
    
    @objc func keyboardWillHide(sender: NSNotification){
        self.view.frame.origin.y = 0
    }
    
    @objc func dismissKeyboard(){
        self.view.endEditing(true)
    }
    
    func hideKeyboardWhenTappedAround(){
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
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
    
    @IBAction func loginActionButton(_ sender: Any) {
        let users = Users.getUsers()
        for user in users{
            if user.email == emailTextField.text && user.password == passwordTextField.text {
                performSegue(withIdentifier: "loginSegue", sender: nil)
            }
        }
    }
}
