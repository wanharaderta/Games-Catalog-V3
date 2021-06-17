//
//  File.swift
//  
//
//  Created by Wanhar on 11/06/21.
//

import Foundation
import Core

public struct GameMapper: Mapper {

  public typealias Response = [GameResponse]
  public typealias Domain = [GameModel]
  
  public init() { }
  
  public func transformResponseToDomain(response: [GameResponse]) -> [GameModel] {
    response.map { result in
      var genre = ""
      if (result.genres?.count ?? 0 > 0) {
        genre = result.genres?[0].name ?? ""
      }
      return GameModel(
        id: result.id,
        name: result.name,
        released: result.released,
        bgImage: result.bgImage,
        rating: result.rating,
        genre: genre)
    }
  }
}
