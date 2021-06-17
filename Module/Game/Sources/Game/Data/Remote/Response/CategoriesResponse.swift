//
//  File.swift
//  
//
//  Created by Wanhar on 16/06/21.
//

import Foundation

public struct CategoriesResponse: Decodable {
    let results: [CategoryResponse]
}

public struct CategoryResponse: Decodable {
    let id: Int
    let name, slug: String
    let gamesCount: Int
    let imageBackground: String

    private enum CodingKeys: String, CodingKey {
        case id, name, slug
        case gamesCount = "games_count"
        case imageBackground = "image_background"
    }
}
