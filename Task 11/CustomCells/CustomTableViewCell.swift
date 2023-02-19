//
//  CustomTableViewCell.swift
//  Task 11
//
//  Created by Maxim Dmytruk on 22.01.2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var viewCount: UILabel!
    @IBOutlet weak var descriptionOfPost: UILabel!
    @IBOutlet weak var timeAgo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(post:Post){
        
        self.userName.text = post.userName
        self.avatarImage.layer.cornerRadius = 20
        self.avatarImage.image = post.userAvatarImageName
        self.postImage.image = UIImage(named: post.postImageName)
        self.viewCount.text = "\(post.countOfComments) views"
        self.descriptionOfPost.text = post.description
        self.timeAgo.text = "\(post.postedAt) minutes ago"
        
    }
    
}
