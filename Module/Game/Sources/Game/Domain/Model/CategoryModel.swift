//
//  File.swift
//  
//
//  Created by Wanhar on 16/06/21.
//

import Foundation

public struct CategoryModel: Identifiable, Equatable {
  public let id: Int
  public let name: String
  public let slug: String
  public let gamesCount: Int
  public let imageBackground: String
}
