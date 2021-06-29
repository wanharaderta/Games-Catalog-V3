//
//  File.swift
//  
//
//  Created by Wanhar on 23/06/21.
//

import XCTest
import Resolver
import Combine
@testable import Game

class GamePresenterTest: XCTestCase {
  
  @Injected var presenter: GamePresenter
  
  
  func testPropertyPresenter() {
    XCTAssertFalse(presenter.isLoadingState)
    XCTAssertEqual(presenter.errorMessage, "")
    XCTAssertEqual(presenter.games.count, 0)
  }
  
  func testGetGames() {
    let expectation = self.expectation(description: "get list of game")
    presenter.getGames()
    
    XCTAssertTrue(presenter.isLoadingState)
    XCTAssertEqual(presenter.errorMessage,"")
    DispatchQueue.main.async {
      XCTAssertTrue(self.presenter.games.count > 0)
      expectation.fulfill()
    }
    waitForExpectations(timeout: 5, handler: nil)
  }
  
  static var allTests = [
    ("testPropertyPresenter", testPropertyPresenter),
    ("testGetGames", testGetGames)
  ]
}
