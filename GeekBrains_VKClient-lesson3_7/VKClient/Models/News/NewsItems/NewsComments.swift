//
//  NewsComments.swift
//  VKClient
//


import Foundation
import RealmSwift

class NewsComments: Object, Decodable {
    @objc dynamic var count: Int = 0
}
