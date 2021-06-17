//
//  File.swift
//  
//
//  Created by Wanhar on 16/06/21.
//

import Foundation

extension CategoryModel {
  
  public static var stub: CategoryModel {
    .init(
      id: 0,
      name: "name string",
      slug: "slug string",
      gamesCount: 0,
      imageBackground: "https://i.ibb.co/MRg6STN/default-placeholder.png")
  }
  
  public static var stubs: [CategoryModel] {
    return [.stub, .stub, .stub, .stub]
  }
}
