//
//  PhotoInfo.swift
//  FuckUIKitSpacePhoto
//
//  Created by Quinn Wienke on 1/31/24.
//

import Foundation

struct PhotoInfo: Codable {
    var title: String
    var description: String
    var url: URL
    var copyright: String?

    enum CodingKeys: String, CodingKey {
        case title
        case description = "explanation"
        case url
        case copyright
    }
}
