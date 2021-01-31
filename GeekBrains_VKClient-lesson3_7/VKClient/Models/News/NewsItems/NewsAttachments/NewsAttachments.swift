//
//  NewsAttachments.swift
//  VKClient
//


import Foundation
import RealmSwift

class NewsAttachments: Object, Decodable {
    @objc dynamic var type: String = ""
    @objc dynamic var photo: NewsAttachmentsPhoto?
    @objc dynamic var link: NewsAttachmentsLink?
}
