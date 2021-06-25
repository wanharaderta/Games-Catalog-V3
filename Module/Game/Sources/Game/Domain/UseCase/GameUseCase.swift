//
//  File.swift
//  
//
//  Created by Wanhar on 13/06/21.
//

import Foundation
import Core
import Combine

public protocol GameUseCase: UseCase {
  func getGames() -> AnyPublisher<[GameModel], Error>
 // func getCategories() -> AnyPublisher<[CategoryModel], Error>
//func searchGames(query: String) -> AnyPublisher<[GameModel], Error>
}
