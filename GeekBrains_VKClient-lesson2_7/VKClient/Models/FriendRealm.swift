//
//  FriendRealm.swift
//  VKClient
//


import Foundation
import RealmSwift

class UserFriendCodable: Codable {
    var response: UserFriendResponse
}

class UserFriendResponse: Codable {
    var count: Int
    var items: [UserFriendItem]
}

class UserFriendItem: Object, Codable {
    @objc dynamic var id: Int = 0
    @objc dynamic var first_name: String = ""
    @objc dynamic var last_name: String = ""
    @objc dynamic var photo_100: String = ""
    
    override class func primaryKey() -> String? {
        return "id"
    }
}


