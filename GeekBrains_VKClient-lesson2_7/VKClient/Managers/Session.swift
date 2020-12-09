//
//  Session.swift
//  VKClient
//


import Foundation

class Session {
    
    var token = ""
    var userId = ""
    
    static let shared = Session()
    private init() { }
    
}
