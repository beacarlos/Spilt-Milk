//
//  RegisterController.swift
//  SpiltMilk
//
//  Created by Beatriz Carlos on 04/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import Foundation
import UIKit

class RegisterController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
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
        
        // User image view.
        userImageView.image = #imageLiteral(resourceName: "RegisterLogo")
        userImageView.layer.cornerRadius = signUpButton.frame.height / 2
        
        // Deixar a sign button redonda.
        signUpButton.layer.cornerRadius = signUpButton.frame.height / 3
        
        textFields.forEach { configtextField(textField: $0) }
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(sender:)), name: UIResponder.keyboardWillShowNotification, object: nil);
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(sender:)), name: UIResponder.keyboardWillHideNotification, object: nil);
        self.hideKeyboardWhenTappedAround()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(self.dismissKeyboard)))
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
    
    // DataPiker
    @IBAction func chooseImageAction(_ sender: UIButton) {
        // controlador de seleção de imagens.
        let imagePickerController = UIImagePickerController()
        
        
        let actionSheet = UIAlertController(title: "Selecione uma foto", message: "Escolhe uma foto.", preferredStyle: .actionSheet)
        imagePickerController.delegate = self
        
        // Opção da câmera
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action: UIAlertAction) in
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                imagePickerController.sourceType = .camera
                self.present(imagePickerController, animated: true, completion: nil)
            } else {
                print("Camera not available.")
            }
        }))
        
        // Opção da galeria
        actionSheet.addAction(UIAlertAction(title: "Galeira de fotos", style: .default, handler: { (action: UIAlertAction) in
            imagePickerController.sourceType = .photoLibrary
            self.present(imagePickerController, animated: true, completion: nil)
            
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey(rawValue: UIImagePickerController.InfoKey.originalImage.rawValue)] as! UIImage
        userImageView.image = image
        userImageView.layer.cornerRadius = signUpButton.frame.height / 2
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    @objc func keyboardWillShow(sender: NSNotification){
        self.view.frame.origin.y = -150
    }
    
    @objc func keyboardWillHide(sender: NSNotification){
        self.view.frame.origin.y = 0
    }
    
    func hideKeyboardWhenTappedAround(){
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard(){
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

