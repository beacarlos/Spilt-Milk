//
//  ControllerCategorias.swift
//  SpiltMilk
//
//  Created by Jhennyfer Rodrigues de Oliveira on 28/04/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//


import UIKit

class CategoriasController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var navigationBar: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .none
//        self.navigationController!.navigationBar.barStyle = 
//        // Do any additional setup after loading the view.
//        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)    self.navigationController!.navigationBar.shadowImage = UIImage()    self.navigationController!.navigationBar.isTranslucent = true 
//        self.searchBar.
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
//        self.navigationController!.navigationBar.shadowImage = .none
        
        self.navigationController!.navigationBar.isTranslucent = true
    }
}
