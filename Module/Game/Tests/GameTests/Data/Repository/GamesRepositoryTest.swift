//
//  File.swift
//  
//
//  Created by Wanhar on 15/06/21.
//

import XCTest
import Foundation
import Core
import Combine
import Resolver
@testable import Game

class GamesRepositoryImplTest: XCTestCase {
  
  @Injected var _remote: FakeGamesRemoteDataSourceImpl
  private var cancellables: Set<AnyCancellable> = []
  
  private func testGetGames() {
    self._remote.getGames()
      .sink(receiveCompletion: { (_) in }, receiveValue: { (games) in
        XCTAssertEqual(games[0].name, GameModel.stub.name)
      })
      .store(in: &cancellables)
  }
  
  static var allTests = [
    ("testGetGames", testGetGames)
  ]
}
