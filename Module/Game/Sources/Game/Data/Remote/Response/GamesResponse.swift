//
//  File.swift
//  
//
//  Created by Wanhar on 11/06/21.
//

import Foundation

public struct GamesResponse: Codable {

  public let results: [GameResponse]

  private enum CodingKeys: String, CodingKey {
    case results
  }
}

public struct GameResponse: Codable {
  public let id: Int
  public let name: String
  public let released: String
  public let bgImage: String
  public let rating: Double
  public let genres: [Genre]?
  public let reviewsCount: Int

  private enum CodingKeys: String, CodingKey {
    case id         = "id"
    case name       = "name"
    case released   = "released"
    case bgImage    = "background_image"
    case rating     = "rating"
    case genres     = "genres"
    case reviewsCount     = "reviews_count"
  }
}

public struct Genre: Codable {
  public let name: String
}
