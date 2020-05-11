//
//  CommentTableViewController.swift
//  SpiltMilk
//
//  Created by Jhennyfer Rodrigues de Oliveira on 06/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import Foundation
import UIKit

class CommentTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CommentCell.nib(), forCellReuseIdentifier: CommentCell.identifier())
    }
    
    // MARK: - Table view data source
    override func tableView(_: UITableView, numberOfRowsInSection: Int) ->Int{
        return  commentCellData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CommentCell.identifier(), for: indexPath) as! CommentCell
        
        cell.configureCell(name: commentCellData[indexPath.row].name, image: commentCellData[indexPath.row].profileImage, text: commentCellData[indexPath.row].text)
        cell.selectionStyle = .none
        
        return cell
    }
}
