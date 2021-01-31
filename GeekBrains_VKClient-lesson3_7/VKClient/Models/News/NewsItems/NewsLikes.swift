//
//  NewsLikes.swift
//  VKClient
//


import Foundation
import RealmSwift

class NewsLikes: Object, Decodable {
    @objc dynamic var count: Int = 0
}
