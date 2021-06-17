//
//  File.swift
//  
//
//  Created by Wanhar on 10/06/21.
//

import Foundation

public struct API {
  public static var baseUrlComponents: URLComponents {
    var urlComponents = URLComponents()
    urlComponents.scheme = "https"
    urlComponents.host = "api.rawg.io"
    return urlComponents
  }
  
  public static let apiKey = "8b0b756ba14b4bff913c68f9a44f4c2b"
}

public protocol Endpoint {
  var url: String { get }
}

public enum Endpoints {
  public enum Gets: Endpoint {
    case games
    case categories
    
    public var url: String {
      switch self {
      case .games: return "/api/games"
      case .categories: return "/api/genres"
      }
    }
  }
}
