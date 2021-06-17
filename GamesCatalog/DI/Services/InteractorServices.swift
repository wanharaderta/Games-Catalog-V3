//
//  UseCaseServices.swift
//  GamesCatalog
//
//  Created by Wanhar on 14/06/21.
//

import Foundation
import Resolver
import Game
import Core

extension Resolver {
  static func registerAllInteractorServices(){
    register {
      GameInteractor() as GameUseCase
    }
  }
}
