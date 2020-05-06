//
//  HomeViewController.swift
//  SpiltMilk
//
//  Created by Hiago Chagas on 02/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

var posts = PostSection.getPosts()

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostTableViewCell
        cell.userNameLabel.text = posts[indexPath.row].username
        cell.dateLabel.text = posts[indexPath.row].date
        cell.postImageView.image = UIImage(named: posts[indexPath.row].postImageName)
        cell.userImageView.image = UIImage(named: posts[indexPath.row].userPhoto)
        cell.postDescriptionLabel.text = posts[indexPath.row].postDescription
        cell.likesCountLabel.text = String(posts[indexPath.row].likesCount)
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        navigationController?.navigationBar.barTintColor = UIColor(red: 0.62, green: 0.96, blue: 0.94, alpha: 1.00)
        let search = UISearchController(searchResultsController: nil)
        // Declare the searchController
        self.navigationItem.searchController = search
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

