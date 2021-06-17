//
//  File.swift
//  
//
//  Created by Wanhar on 15/06/21.
//

import Foundation
import Resolver

extension Resolver {
  static func registerAllFakeGamesRemoteDataSourceServices(){
    register {
      FakeGamesRemoteDataSourceImpl()
    }
  }
}
