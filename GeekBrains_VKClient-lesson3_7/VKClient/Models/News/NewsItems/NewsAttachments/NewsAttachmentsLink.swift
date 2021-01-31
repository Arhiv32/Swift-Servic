//
//  NewsAttachmentsLink.swift
//  VKClient
//


import Foundation
import RealmSwift

class NewsAttachmentsLink: Object, Decodable {
    @objc dynamic var url: String = ""
    @objc dynamic var title: String = ""
    @objc dynamic var caption: String? = nil
    @objc dynamic var photo: NewsAttachmentsPhoto?
}
