//
//  ViewController.swift
//  Task 11
//
//  Created by Maxim Dmytruk on 22.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
    }
    
}


extension ViewController:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell",
                                                 for: indexPath) as! CustomTableViewCell
        let post = Post(postImageName: DataBase.imageArray[indexPath.row],
                        viewsCount: indexPath.row,
                        description: DataBase.descriptionsArray[indexPath.row],
                        countOfComments: indexPath.row+4,
                        postedAt: indexPath.row)
        
        cell.configure(post: post)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 470
    }
}

extension ViewController: UITableViewDelegate {
 
}
