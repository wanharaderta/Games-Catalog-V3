//
//  File.swift
//  
//
//  Created by Wanhar on 11/06/21.
//

import Foundation
import Core
import Resolver
import Combine

public protocol GamesRepository: Repository {
  func getGames() -> AnyPublisher<[GameModel], Error>
  func getCategories() -> AnyPublisher<[CategoryModel], Error>
  func searchGames(query: String) -> AnyPublisher<[GameModel], Error>
}

public struct GamesRepositoryImpl: GamesRepository {
  
  @Injected var _remote: GamesRemoteDataSourceImpl
  @Injected var _mapper: GameMapper
  @Injected var _mapperCategory: CategoryMapper
  
  public init() { }
  
  public func getGames() -> AnyPublisher<[GameModel], Error> {
    return self._remote.getGames()
      .map { _mapper.transformResponseToDomain(response: $0) }
      .eraseToAnyPublisher()
  }
  
  public func getCategories() -> AnyPublisher<[CategoryModel], Error> {
    return self._remote.getCategories()
      .map { _mapperCategory.transformResponseToDomain(response: $0) }
      .eraseToAnyPublisher()
  }
  
  public func searchGames(query: String) -> AnyPublisher<[GameModel], Error> {
    return self._remote.searchGames(query: query, pageSize: "10")
      .map { _mapper.transformResponseToDomain(response: $0) }
      .eraseToAnyPublisher()
  }
}
