//
//  NewsListCell.swift
//  VKClient
//


import UIKit

class NewsListCell: UITableViewCell {

    // UI
    @IBOutlet weak var authorPhoto: UIImageView!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var likesButton: UIImageView!
    @IBOutlet weak var commentButton: UIImageView!
    @IBOutlet weak var shareButton: UIImageView!
    @IBOutlet weak var viewsCountPhoto: UIImageView!
    
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var datePosted: UILabel!
    @IBOutlet weak var postText: UILabel!
    @IBOutlet weak var likesNumber: UILabel!
    @IBOutlet weak var viewsCountNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}