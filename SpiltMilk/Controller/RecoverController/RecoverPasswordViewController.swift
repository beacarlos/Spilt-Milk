//
//  RecoverPasswordViewController.swift
//  SpiltMilk
//
//  Created by Jessica Guiot on 05/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class RecoverPasswordViewController: UIViewController, UITextFieldDelegate {
    //MARK: - IBOutlets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var enviarEmailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.emailTextField.delegate = self
        
        customButton()
        customTextField()
        
        //View scroll up and down
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(sender:)), name: UIResponder.keyboardWillShowNotification, object: nil);
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(sender:)), name: UIResponder.keyboardWillHideNotification, object: nil);
        
        //Adicionando gesture para o teclado sair
        self.hideKeyboardWhenTappedAround()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(RecoverPasswordViewController.dismissKeyboard)))
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    //MARK: - Métodos
    func customButton() {
        enviarEmailButton.layer.cornerRadius = 16
    }
    
    func customTextField() {
        let textFieldColor = UIColor(red: 0.0, green: 131.0/255.0, blue: 143.0/255.0, alpha: 1)
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0.0, y: 25, width: 263, height: 1.0)
        bottomLine.backgroundColor = textFieldColor.cgColor
        
        emailTextField.borderStyle = .none
        emailTextField.layer.addSublayer(bottomLine)
    }
    
    @objc func keyboardWillShow(sender: NSNotification){
        self.view.frame.origin.y = -95
    }
    
    @objc func keyboardWillHide(sender: NSNotification){
        self.view.frame.origin.y = 0
    }
    
    func hideKeyboardWhenTappedAround(){
        let tap : UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(RecoverPasswordViewController.dismissKeyboard))
        
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard(){
        self.view.endEditing(true)
    }
    
    //MARK: - Text Field Delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
