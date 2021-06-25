//
//  File.swift
//  
//
//  Created by Wanhar on 11/06/21.
//

import Foundation
import Core
import Combine
import Alamofire

public protocol GamesRemoteDataSource {
  func getGames() -> AnyPublisher<[GameResponse], Error>
  //func getCategories() -> AnyPublisher<[CategoryResponse], Error>
  //func searchGames(query: String,pageSize: String) -> AnyPublisher<[GameResponse], Error>
}

public struct GamesRemoteDataSourceImpl: GamesRemoteDataSource {
  
  public init() { }
  
  public func getGames() -> AnyPublisher<[GameResponse], Error> {
    return Future<[GameResponse], Error> { completion in
      var urlComponents = API.baseUrlComponents
      urlComponents.setQueryItems(with: [
        "key": API.apiKey
      ])
      
      urlComponents.path = Endpoints.Gets.games.url
      
      guard let url =  urlComponents.url else { return }
      
      AF.request(url)
        .validate()
        .responseDecodable(of: GamesResponse.self) { response in
          switch response.result {
          case .success(let games):
            completion(.success(games.results))
          case .failure:
            completion(.failure(URLError.invalidResponse))
          }
        }
    }.eraseToAnyPublisher()
  }
  
//  public func getCategories() -> AnyPublisher<[CategoryResponse], Error> {
//    return Future<[CategoryResponse], Error> { completion in
//      var urlComponents = API.baseUrlComponents
//      urlComponents.setQueryItems(with: [
//        "key": API.apiKey
//      ])
//      urlComponents.path = Endpoints.Gets.categories.url
//      
//      guard let url =  urlComponents.url else { return }
//      
//      AF.request(url)
//        .validate()
//        .responseDecodable(of: CategoriesResponse.self) { response in
//          switch response.result {
//          case .success(let categories):
//            completion(.success(categories.results))
//          case .failure:
//            completion(.failure(URLError.invalidResponse))
//          }
//        }
//    }.eraseToAnyPublisher()
//  }
//  
//  public func searchGames(query: String,pageSize: String) -> AnyPublisher<[GameResponse], Error> {
//    return Future<[GameResponse], Error> { completion in
//      var urlComponents = API.baseUrlComponents
//      urlComponents.setQueryItems(with: [
//        "search": query,
//        "page_size": pageSize,
//        "key": API.apiKey
//      ])
//      urlComponents.path = Endpoints.Gets.games.url
//      
//      guard let url =  urlComponents.url else { return }
//      
//      AF.request(url)
//        .validate()
//        .responseDecodable(of: GamesResponse.self) { response in
//          switch response.result {
//          case .success(let games):
//            completion(.success(games.results))
//          case .failure:
//            completion(.failure(URLError.invalidResponse))
//          }
//        }
//    }.eraseToAnyPublisher()
//  }
  
}

