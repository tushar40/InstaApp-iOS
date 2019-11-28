//
//  InstagramResponse.swift
//  InstaApp
//
//  Created by Tushar Gusain on 26/11/19.
//  Copyright © 2019 Hot Cocoa Software. All rights reserved.
//

import Foundation

//MARK:- Instagram Users
struct InstagramTestUser: Codable {
    var access_token: String
    var user_id: Int
}

struct InstagramUser: Codable {
    var id: String
    var username: String
}

//MARK:- Instagram Feed
struct Feed: Codable {
    var data: [MediaData]
    var paging : PagingData
}

struct MediaData: Codable {
    var id: String
    var caption: String?
}

struct PagingData: Codable {
    var cursors: CursorData
    var next: String
}

struct CursorData: Codable {
    var before: String
    var after: String
}

struct InstagramMedia: Codable {
      var id: String
      var media_type: MediaType
      var media_url: String
      var username: String
      var timestamp: String //"2017-08-31T18:10:00+0000"
}

enum MediaType: String,Codable {
    case IMAGE
    case VIDEO
    case CAROUSEL_ALBUM
}
