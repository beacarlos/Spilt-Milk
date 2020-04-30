//
//  PostsTableViewController.swift
//  mockPosts
//
//  Created by Hiago Chagas on 29/04/20.
//  Copyright © 2020 Hiago Chagas. All rights reserved.
//

import UIKit

var posts = PostSection.getPosts()

class PostsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return posts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostTableViewCell
        
        cell.userNameLabel.text = posts[indexPath.row].username
        cell.dateLabel.text = posts[indexPath.row].date
        cell.postImageView.image = UIImage(named: posts[indexPath.row].postImageName)
        cell.userImageView.image = UIImage(named: posts[indexPath.row].userPhoto)
        cell.postDescriptionLabel.text = posts[indexPath.row].postDescription
       
        return cell
    }


}
