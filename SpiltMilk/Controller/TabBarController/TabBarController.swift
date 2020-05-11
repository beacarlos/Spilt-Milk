//
//  TabBarController.swift
//  SpiltMilk
//
//  Created by Beatriz Carlos on 07/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    @IBOutlet weak var TabBar: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedIndex = 1;
    }
}
