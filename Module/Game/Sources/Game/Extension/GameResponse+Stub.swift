//
//  File.swift
//  
//
//  Created by Wanhar on 15/06/21.
//

import Foundation


extension GameResponse {
  
  public static var stub: GameResponse {
    .init(
      id: 0,
      name: "string",
      released: "2021-06-15",
      bgImage: "https://i.ibb.co/MRg6STN/default-placeholder.png",
      rating: 0.0,
      genres: [],
      reviewsCount: 0
    )
  }
  
  public static var stubs: [GameResponse] {
    return [.stub, .stub, .stub, .stub]
  }
}
