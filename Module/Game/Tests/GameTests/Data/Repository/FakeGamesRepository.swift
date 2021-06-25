//
//  File.swift
//  
//
//  Created by Wanhar on 23/06/21.
//

import Foundation
import Core
import Resolver
import Combine
import Game

public struct FakeGamesRepositoryImpl: GamesRepository {

  @Injected var _remote: FakeGamesRemoteDataSourceImpl
  @Injected var _mapper: GameMapper

  public init() { }
  
  public func getGames() -> AnyPublisher<[GameModel], Error> {
    return self._remote.getGames()
      .map { _mapper.transformResponseToDomain(response: $0) }
      .eraseToAnyPublisher()
  }
}
