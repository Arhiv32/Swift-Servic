//
//  NewsCopyHistory.swift
//  VKClient
//


import Foundation
import RealmSwift

class NewsCopyHistory: Object, Decodable {
    @objc dynamic var id: Int = 0
    @objc dynamic var date: Int = 0
    @objc dynamic var postType: String = ""
    @objc dynamic var text: String = ""
    var newsCopyHistoryAttachments = List<NewsAttachments>()

    enum CodingKeys: String, CodingKey {
        case id
        case date
        case postType = "post_type"
        case text
        case newsCopyHistoryAttachments = "attachments"
    }
}