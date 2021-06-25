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
  
  func testRemoteGetGames() {
    let expectation = self.expectation(description: "get list of game")
    self._remote.getGames()
      .sink(receiveCompletion: { (_) in }, receiveValue: { games in
        XCTAssertEqual(games[0].name, GameModel.stub.name)
        expectation.fulfill()
      })
      .store(in: &cancellables)
    waitForExpectations(timeout: 3, handler: nil)
  }
  
  static var allTests = [
    ("testRemoteGetGames", testRemoteGetGames)
  ]
}
