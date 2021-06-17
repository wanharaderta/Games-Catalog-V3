//
//  RemoteDataSourceServices.swift
//  GamesCatalog
//
//  Created by Wanhar on 14/06/21.
//

import Foundation
import Game
import Resolver

extension Resolver {
  static func registerAllRemoteDataSourceServices(){
    register {
      GamesRemoteDataSourceImpl()
    }
  }
}
