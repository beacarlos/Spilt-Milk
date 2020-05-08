//
//  HomeViewController.swift
//  SpiltMilk
//
//  Created by Hiago Chagas on 02/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

//var posts = PostSection.getPosts()

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //navigationController?.navigationBar.shadowImage = UIImage()
        let search = UISearchController(searchResultsController: nil)
        // Declare the searchController
        self.navigationItem.searchController = search
        navigationController?.navigationBar.backgroundColor = UIColor(red: 0.62, green: 0.96, blue: 0.94, alpha: 1.00)
        
        print("-------------------------------------------------",cellData[cellData.count-1])
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        tableView.register(SmallPostTableViewCell.nib(), forCellReuseIdentifier: SmallPostTableViewCell.identifier())
        tableView.register(LargePostTableViewCell.nib(), forCellReuseIdentifier: LargePostTableViewCell.identifier())
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
    }
    
    func commentScreenAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "CommentTableViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CommentTableViewController") as UIViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addPost" {
            let destination = segue.destination as! PostPublishController
            destination.delegate = self
        }
    }
    
    //MARK: - Table View Data Source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if cellData[indexPath.row].tipo  == 0 {
            
            let postCell = tableView.dequeueReusableCell(withIdentifier: SmallPostTableViewCell.identifier(), for: indexPath) as! SmallPostTableViewCell
            postCell.selectionStyle = .none
            
            postCell.setPostData(nomeUsuario: cellData[indexPath.row].nomeUsuario, imagemUsuario: cellData[indexPath.row].imagemUsuario, textoPost: cellData[indexPath.row].textPost)
            
            return postCell
            
            
        } else {
            
            let postCell = tableView.dequeueReusableCell(withIdentifier: LargePostTableViewCell.identifier(), for: indexPath) as! LargePostTableViewCell
            postCell.selectionStyle = .none
            
            postCell.setPostDataLarge(nomeUsuario: cellData[indexPath.row].nomeUsuario, imagemUsuario: cellData[indexPath.row].imagemUsuario, imagemPost: cellData[indexPath.row].imagemPost!, textoPost: cellData[indexPath.row].textPost)
            
            
            return postCell
            
        }
    }
}

extension HomeViewController: PostPublishDelegate {
    func publish(post: postCell) {
        tableView.beginUpdates()
        cellData.append(post)
        tableView.insertRows(at: [IndexPath.init(row: cellData.count-1, section: 0)], with: .automatic)
        tableView.endUpdates()
    }
}


extension UIApplication {
    var statusBarView: UIView? {
        if responds(to: Selector(("statusBar"))) {
            return value(forKey: "statusBar") as? UIView
        }
        return nil
    }
}

