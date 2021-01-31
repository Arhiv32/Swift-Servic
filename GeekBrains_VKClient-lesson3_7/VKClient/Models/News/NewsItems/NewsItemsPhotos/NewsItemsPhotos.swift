//
//  NewsItemsPhotos.swift
//  VKClient
//


import Foundation
import RealmSwift

class NewsItemsPhotos: Object, Decodable {
    @objc dynamic var count: Int = 0
    var items = List<NewsItemsPhotosItems>()
}

