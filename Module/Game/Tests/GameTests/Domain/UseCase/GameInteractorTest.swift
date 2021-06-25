//
//  File.swift
//  
//
//  Created by Wanhar on 24/06/21.
//

import Foundation
import Resolver
import XCTest
import Combine
@testable import Game

class GameInteractorTest: XCTestCase {
  
  @Injected var _repository: GamesRepository
  private var cancellables: Set<AnyCancellable> = []
  
  
  func testGetGame() {
    self._repository.getGames()
      .sink(receiveCompletion: { completion in
        switch completion {
        case.failure(let error):
          print("Failure with error: \(error.localizedDescription)")
        case.finished:
          print("Finished ⚡️")
        }
      }, receiveValue: { result in
       XCTAssertTrue(result[0].name == GameResponse.stub.name)
      })
      .store(in: &cancellables)
  }
  
    override func tearDown() {
      self.cancellables = []
    }
  
  static var allTests = [
    ("testGetGame", testGetGame)
  ]
}
