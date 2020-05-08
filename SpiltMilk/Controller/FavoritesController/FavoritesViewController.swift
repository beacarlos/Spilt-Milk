//
//  FavoritesViewController.swift
//  SpiltMilk
//
//  Created by Jessica Guiot on 05/05/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        tableView.register(SmallPostTableViewCell.nib(), forCellReuseIdentifier: SmallPostTableViewCell.identifier())
        
        tableView.register(LargePostTableViewCell.nib(), forCellReuseIdentifier: LargePostTableViewCell.identifier())
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
            
            postCell.commentButton.addTarget(self, action: #selector(test), for: .touchUpInside)
            
            return postCell
            
            
        } else {
            
            let postCell = tableView.dequeueReusableCell(withIdentifier: LargePostTableViewCell.identifier(), for: indexPath) as! LargePostTableViewCell
            postCell.selectionStyle = .none
            
            
            postCell.setPostDataLarge(nomeUsuario: cellData[indexPath.row].nomeUsuario, imagemUsuario: cellData[indexPath.row].imagemUsuario, imagemPost: cellData[indexPath.row].imagemPost!, textoPost: cellData[indexPath.row].textPost)
            
            
            postCell.commentButtonLarge.addTarget(self, action: #selector(test), for: .touchUpInside)
            
            return postCell
            
        }
    }
    
    @objc func test(){
//        let storyboard = UIStoryboard(name: "CommentScreen", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "CommentScreen") as UIViewController
//        self.present(vc, animated: true, completion: nil)
        performSegue(withIdentifier: "", sender: self)
    }
}


