//
//  ProfileEditViewController.swift
//  SpiltMilk
//
//  Created by Hiago Chagas on 04/05/20.
//  Copyright © 2020 Hiago Chagas. All rights reserved.
//

import UIKit

class ProfileEditViewController: UIViewController {
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var newPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK:- Keyboard goes up and down
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(sender:)), name: UIResponder.keyboardWillShowNotification, object: nil);
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(sender:)), name: UIResponder.keyboardWillHideNotification, object: nil);
        self.hideKeyboardWhenTappedAround()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(ProfileEditViewController.dismissKeyboard)))
        // Do any additional setup after loading the view.
        
        let textFields: [UITextField]! = [userNameTextField, emailTextField, passwordTextField, newPasswordTextField]
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
        userImage.image = UIImage(named:"joao")
        userImage.layer.cornerRadius = userImage.frame.width / 2
    }
    @objc func keyboardWillShow(sender: NSNotification){
        self.view.frame.origin.y = -150
    }

    @objc func keyboardWillHide(sender: NSNotification){
        self.view.frame.origin.y = 0
    }
    func hideKeyboardWhenTappedAround(){
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ProfileEditViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard(){
        self.view.endEditing(true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let oldPassword = passwordTextField.text ?? ""
        let userEdited = User(userName: userNameTextField.text ?? "" , email: emailTextField.text ?? "", password: newPasswordTextField.text ?? "")
        let destinyViewController = segue.destination as! ProfileViewController
        destinyViewController.editedUser = userEdited
        destinyViewController.oldPassword = oldPassword
    }
}

