//
//  File.swift
//  
//
//  Created by Wanhar on 11/06/21.
//

import XCTest
import Foundation
import Combine
import Core
import Alamofire
@testable import Game

final class GamesRemoteDataSourceImplTest: XCTestCase {
  
  func testExecuteGetList() {
    var urlComponents = API.baseUrlComponents
    urlComponents.path = Endpoints.Gets.games.url
    urlComponents.setQueryItems(with: [
      "key": API.apiKey
    ])
    
    guard let url =  urlComponents.url else {
      XCTFail("URL Nil")
      return
    }
    
    let e = expectation(description: "testExecuteGetList")
    
    AF.request(url)
      .validate()
      .responseDecodable(of: GamesResponse.self) { response in
        switch response.result {
        case.success(let games):
          XCTAssertTrue(games.results.count > 0)
        case.failure(let error):
          XCTAssertNil(error, "\(error.localizedDescription)")
        }
        e.fulfill()
      }
    waitForExpectations(timeout: 10, handler: nil)
  }
  
  static var allTests = [
    ("testExecuteGetList", testExecuteGetList)
  ]
  
}
