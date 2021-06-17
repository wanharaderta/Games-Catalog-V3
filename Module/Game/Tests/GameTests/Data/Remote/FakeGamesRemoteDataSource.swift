//
//  File.swift
//  
//
//  Created by Wanhar on 15/06/21.
//

import Foundation
import Combine
import Alamofire
import Game

public struct FakeGamesRemoteDataSourceImpl: GamesRemoteDataSource {
  
  public init() { }
  
  public func getGames() -> AnyPublisher<[GameResponse], Error> {
    return Future<[GameResponse], Error> { completion in
      completion(.success(GameResponse.stubs))
    }.eraseToAnyPublisher()
  }
  
}
