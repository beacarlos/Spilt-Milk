//
//  HomeController.swift
//  SpiltMilk
//
//  Created by Beatriz Carlos on 30/04/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //navigationController?.navigationBar.shadowImage = UIImage()
        let search = UISearchController(searchResultsController: nil)
        // Declare the searchController
        self.navigationItem.searchController = search
    }
}
