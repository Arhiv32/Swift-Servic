//
//  FriendPageViewController.swift
//  VKClient
//
//  Created by Федор Филимонов on 14.07.2020.
//  Copyright © 2020 fedorfilimonov. All rights reserved.
//

import UIKit

class FriendPageViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var selectedFriend: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        
        NetworkService.shared.getUserPhotosList(token: Session.shared.token, userID: Session.shared.userId)
    }
}

extension FriendPageViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return workingFriendsListCatalogue[selectedFriend].friendPhoto.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendPageCell", for: indexPath) as! FriendPageCell
        
        cell.userPic.image = workingFriendsListCatalogue[selectedFriend].friendPhoto[indexPath.row].photoName
        cell.photoCounter = indexPath.row
        cell.friendIndex = selectedFriend
        cell.setUpLikeControl()
        
        return cell
    }
}
