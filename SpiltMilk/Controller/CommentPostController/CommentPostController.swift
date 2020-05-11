//
//  CommentPostController.swift
//  SpiltMilk
//
//  Created by Beatriz Carlos on 05/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import Foundation
import UIKit

class CommentPostController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // text view
        let textView = UITextView()
        textView.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        //textView.backgroundColor = UIColor(red: 0.77, green: 0.87, blue: 0.96, alpha: 1.00)
        textView.backgroundColor = .white
        textView.text = "Escreva um comentário."
        textView.textColor = UIColor.lightGray
        
        view.addSubview(textView)
        
        // use auto layout to set my textview frame
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        [textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 66),
         textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
         textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
         textView.heightAnchor.constraint(equalToConstant: 50)
            ].forEach{ $0.isActive = true }
        
        textView.font = UIFont.preferredFont(forTextStyle: .body)
        textView.delegate = self
        textView.isScrollEnabled = false
        
        textViewDidChange(textView)
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @IBAction func dismissModal(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}

extension CommentPostController : UITextViewDelegate {
    // função que deixa o tamanho automático de acordo com o que o usúario escrever.
    func textViewDidChange(_ textView: UITextView) {
        let size = CGSize(width: view.frame.width, height: .infinity)
        // Tamanho de text field inicial estimado.
        let estimatedSize = textView.sizeThatFits(size)
        
        textView.constraints.forEach { (constraint) in
            if constraint.firstAttribute == .height {
                constraint.constant = estimatedSize.height
            }
        }
    }
    
    // Retirando o placeholder.
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    // Quando o usúario limpar o Text View.
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Escreva um comentário."
            textView.textColor = UIColor.lightGray
        }
    }
}
