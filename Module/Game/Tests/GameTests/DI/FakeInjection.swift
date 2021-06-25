//
//  File.swift
//  
//
//  Created by Wanhar on 15/06/21.
//

import Foundation
import Resolver
import Game

extension Resolver {
  static func registerAllFakeGamesRemoteDataSourceServices(){
    register {
      FakeGamesRemoteDataSourceImpl()
    }
  }
  static func registerAllFakeGamesRepositoryServices(){
    register {
      FakeGamesRepositoryImpl() as GamesRepository
    }
  }
  static func registerAllFakeInteractorServices(){
    register {
      FakeGameInteractor() as GameUseCase
    }
  }
  static func registerAllMapperServices(){
    register {
      GameMapper()
    }
  }
  static func registerAllPresenterServices(){
    register {
      GamePresenter()
    }
  }
}
