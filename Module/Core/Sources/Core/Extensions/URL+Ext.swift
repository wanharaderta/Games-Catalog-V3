//
//  File.swift
//  
//
//  Created by Wanhar on 11/06/21.
//

import Foundation

extension URLComponents {
  
  public mutating func setQueryItems(with parameters: [String: String]) {
    self.queryItems = parameters.map { URLQueryItem(name: $0.key, value: $0.value) }
  }
  
}
