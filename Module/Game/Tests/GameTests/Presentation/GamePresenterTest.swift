//
//  File.swift
//  
//
//  Created by Wanhar on 23/06/21.
//

import XCTest
import Resolver
@testable import Game

class GamePresenterTest: XCTestCase {
  
  @Injected var presenter: GamePresenter
  
  
  func testPropertyPresenter() {
    XCTAssertFalse(presenter.isLoadingState)
    XCTAssertEqual(presenter.errorMessage, "")
    //XCTAssertNil(presenter.games)
  }
}
