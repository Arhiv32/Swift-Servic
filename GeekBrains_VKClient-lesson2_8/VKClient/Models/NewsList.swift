//
//  NewsList.swift
//  VKClient
//


import UIKit

struct NewsList: Equatable {
    var newsDescription: String!
    var newsImage: UIImage!
    var isNewsLiked: Bool!
    var newsLikesNumber: Int!
}

var newsList = [
NewsList(newsDescription: "МТС получила первую в России лицензию на 5G", newsImage: UIImage(named: "news_2")!, isNewsLiked: true, newsLikesNumber: 10),
NewsList(newsDescription: "ОСАГО подешевело у половины страховщиков", newsImage: UIImage(named: "news_1")!, isNewsLiked: true, newsLikesNumber: 10),
]

var workingNewsList = newsList
