//
//  File.swift
//  
//
//  Created by Wanhar on 16/06/21.
//

import Foundation
import Core

public struct CategoryMapper: Mapper {

  public typealias Response = [CategoryResponse]
  public typealias Domain = [CategoryModel]
  
  public init() { }

  public func transformResponseToDomain(response: [CategoryResponse]) -> [CategoryModel] {
    return response.map { result in
      CategoryModel(
        id: result.id,
        name: result.name,
        slug: result.slug,
        gamesCount: result.gamesCount,
        imageBackground: result.imageBackground
      )
    }
  }
}
