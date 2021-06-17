//
//  File.swift
//  
//
//  Created by Wanhar on 14/06/21.
//

import Foundation
import Resolver
import Combine

public class GamePresenter: ObservableObject {
  
  @Injected var _useCase: GameUseCase
  
  private var cancellables: Set<AnyCancellable> = []
  @Published public var isLoadingState: Bool = false
  @Published public var errorMessage: String = ""
  @Published public var gamesCategory: [String: [GameModel]] = [:]
  //@Published public var games: [GameModel] = []
  @Published public var categories: [CategoryModel] = []
  
  public init() { }
  
  public func getGames() {
    self.isLoadingState = true
    _useCase.getGames()
      .receive(on: RunLoop.main)
      .sink(receiveCompletion: { completion in
        switch completion {
        case .failure(let error):
          self.isLoadingState = false
          self.errorMessage = error.localizedDescription
          print("error \(self.errorMessage)")
        case .finished:
          self.isLoadingState = false
        }
      }, receiveValue: { result in
        self.categories.forEach { category in
          self.gamesCategory[category.name] = result.filter { $0.genre == category.name }
        }
      })
      .store(in: &cancellables)
  }
  
  public func getCategories(){
    self.isLoadingState = true
    _useCase.getCategories()
      .receive(on: RunLoop.main)
      .sink(receiveCompletion: { completion in
        switch completion {
        case .failure(let error):
          self.isLoadingState = false
          self.errorMessage = error.localizedDescription
        case .finished:
          self.isLoadingState = false
        }
      }, receiveValue: { result in
       // self.categories = result.filter { ($0.name == "Action" && $0.name == "Adventure") }
        self.categories = result.filter { $0.name == "Action" || $0.name == "Adventure" }
        self.getGames()
      })
      .store(in: &cancellables)
  }
  
  public func getGamesCategory(category: String) -> [GameModel]{
    return self.gamesCategory[category] ?? []
  }
  //
  //  public func searchGames(query: String) {
  //    self.isLoadingState = true
  //    _useCase.getGames()
  //      .receive(on: DispatchQueue.main)
  //      .sink(receiveCompletion: { completion in
  //        switch completion {
  //        case .failure(let error):
  //          self.isLoadingState = false
  //          self.errorMessage = error.localizedDescription
  //        case .finished:
  //          self.isLoadingState = false
  //        }
  //      }, receiveValue: { result in
  //        self.games = result
  //      })
  //      .store(in: &cancellables)
  //  }
}
