//
//  File.swift
//  
//
//  Created by Wanhar on 23/06/21.
//

import Foundation
import Game
import Combine
import Resolver

public class FakeGameInteractor: GameUseCase {
  
  @Injected var _repository: GamesRepository
  
  public init() { }
  
  public func getGames() -> AnyPublisher<[GameModel], Error> {
    return self._repository.getGames()
  }
  
}
