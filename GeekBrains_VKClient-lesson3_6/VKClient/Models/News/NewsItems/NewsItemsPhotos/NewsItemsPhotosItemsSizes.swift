//
//  NewsItemsPhotosItemsSizes.swift
//  VKClient
//


import Foundation
import RealmSwift

class NewsItemsPhotosItemsSizes: Object, Decodable {
    @objc dynamic var height: Int = 0
    @objc dynamic var type: String = ""
    @objc dynamic var url: String = ""
    @objc dynamic var width: Int = 0
}
