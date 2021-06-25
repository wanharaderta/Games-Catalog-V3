//
//  File.swift
//  
//
//  Created by Wanhar on 13/06/21.
//

import Foundation
import Core
import Combine
import Resolver

public class GameInteractor: GameUseCase {
  
  @Injected var _repository: GamesRepository
  
  public init() { }
  
  public func getGames() -> AnyPublisher<[GameModel], Error> {
    return self._repository.getGames()
  }
  
//  public func getCategories() -> AnyPublisher<[CategoryModel], Error> {
//    return self._repository.getCategories()
//  }
//  
//  public func searchGames(query: String) -> AnyPublisher<[GameModel], Error> {
//    return self._repository.searchGames(query: query)
//  }
  
}
