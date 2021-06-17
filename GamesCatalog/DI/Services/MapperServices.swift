//
//  MapperServices.swift
//  GamesCatalog
//
//  Created by Wanhar on 14/06/21.
//

import Foundation
import Resolver
import Core
import Game

extension Resolver {
  static func registerAllMapperServices(){
    register {
      GameMapper()
    }
    register {
      CategoryMapper()
    }
  }
}
