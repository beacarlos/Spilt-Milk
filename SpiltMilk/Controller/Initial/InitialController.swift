//
//  InitialController.swift
//  SpiltMilk
//
//  Created by Jhennyfer Rodrigues de Oliveira on 04/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import Foundation
import UIKit

enum tappedButton{
    case signIn
    case register
    case guest
}

class InitialController : UIViewController{
    //MARK: - IBOutlets
    @IBOutlet weak var welcomeText: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var logoTitle: UILabel!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var viewDetail: UIView!
    
    
    override func viewDidLoad() {
        viewDetail.layer.cornerRadius = 50
        logoTitle.text = "Spilt Milk"
        welcomeText.text = "Discuta, aprenda e compartilhe experiências sobre a Alergia à Proteína do Leite de Vaca."
        styleSignInButton(button: signInButton)
        styleRegisterButton(button: registerButton)
        buttonAction(button: signInButton)
        buttonAction(button: registerButton)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
        
    }
    
    func styleSignInButton(button: UIButton){
        button.backgroundColor = #colorLiteral(red: 0.3882352941, green: 0.7019607843, blue: 0.7333333333, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 27
    }
    
    func styleRegisterButton(button: UIButton){
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.setTitleColor(#colorLiteral(red: 0.3882352941, green: 0.7019607843, blue: 0.7333333333, alpha: 1) , for: .normal)
        button.layer.cornerRadius = 27
        button.layer.borderColor = #colorLiteral(red: 0.3882352941, green: 0.7019607843, blue: 0.7333333333, alpha: 1)
        button.layer.borderWidth = 2
    }
    
    func buttonAction(button: UIButton){
        button.addTarget(self, action: #selector(updateView), for: .touchUpInside)
        
    }
    
    @objc func updateView(button: UIButton) {
        var tappedButton: tappedButton
        let buttonTitle = button.currentTitle
        
        if buttonTitle == "Register" {
            tappedButton = .register
        } else if buttonTitle == "Sign In"{
            tappedButton = .signIn
        }else{
            tappedButton = .guest
        }
        switch tappedButton {
        case .signIn:
            print("login")
        case .register:
            print("register")
        case .guest:
            print("guest")
        }
    }
}
extension InitialController{
    @IBAction func cancelToInitial(_ segue: UIStoryboardSegue) {
    }
}


