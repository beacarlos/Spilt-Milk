//
//  CommentTableViewController.swift
//  SpiltMilk
//
//  Created by Jhennyfer Rodrigues de Oliveira on 06/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import Foundation
import UIKit

enum buttonType{
    case back
    case add
}

class CommentTableViewController: UITableViewController {
    
    @IBOutlet weak var addCommentButton: UIBarButtonItem!
    @IBOutlet weak var backButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CommentCell.nib(), forCellReuseIdentifier: CommentCell.identifier())
        
        // action if user tap right button
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(addTapped))
        
        // action if user tap left button
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "< Back", style: .plain, target: self, action: #selector(backTapped))
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_: UITableView, numberOfRowsInSection: Int) ->Int{
        return 8
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CommentCell.identifier(), for: indexPath) as! CommentCell
        
        // Configure the cell
        cell.configureCell(name: "Jhennyfer Oliveira", image: UIImage(imageLiteralResourceName:"Experiences"), text: "The lower portion of the popover lets you set the item’s width or height. The Width and Height constraints default to the current canvas size, though you can type in different values.", numOfLikes: "0")
        
        cell.selectionStyle = .none
        return cell
    }
    
    @objc func addTapped(){
        print("go to post comment screen")
    }
    
    @objc func backTapped(){
        print("go to post screen")
    }


//      Override to support conditional editing of the table view.
//     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
////      Return false if you do not want the specified item to be editable.
//     return false
//     }
 
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
