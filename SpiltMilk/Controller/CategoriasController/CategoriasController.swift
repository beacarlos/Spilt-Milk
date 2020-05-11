//
//  ControllerCategorias.swift
//  SpiltMilk
//
//  Created by Jhennyfer Rodrigues de Oliveira on 28/04/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//


import UIKit

class CategoriasController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //navigationController?.navigationBar.shadowImage = UIImage()
        let search = UISearchController(searchResultsController: nil)
        // Declare the searchController
        self.navigationItem.searchController = search
    }
}
