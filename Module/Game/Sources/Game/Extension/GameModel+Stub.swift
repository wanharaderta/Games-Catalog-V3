//
//  File.swift
//  
//
//  Created by Wanhar on 15/06/21.
//

import Foundation

extension GameModel {
  
  public static var stub: GameModel {
    .init(
      id: 0,
      name: "string",
      released: "2021-06-15",
      bgImage: "https://i.ibb.co/MRg6STN/default-placeholder.png",
      rating: 0.0,
      genre: "genre string",
      reviewsCount: 0
    )
  }
  
  public static var stubs: [GameModel] {
    return [.stub, .stub, .stub, .stub]
  }
}
