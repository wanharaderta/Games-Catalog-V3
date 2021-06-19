//
//  HomeView.swift
//  gamescatalog
//
//  Created by Wanhar on 10/06/21.
//

import SwiftUI
import Game
import Combine

struct HomeView: View {
  
  @ObservedObject var presenter: GamePresenter
  
  let screen = UIScreen.main.bounds
  
  var body: some View {
    ZStack {
      Color.black.edgesIgnoringSafeArea(.all)
      ScrollView(.vertical, showsIndicators: false) {
        VStack {
          
          TopGameView(categories: self.presenter.categories,
                      promotedGame: GamePresenter.promotedGame)
            .frame(width: screen.width, height: 550)
            .padding(.top, -110)
          
          
          ForEach(self.presenter.categories) { category in
            VStack {
              HStack {
                Text(category.name)
                Spacer()
              }
              ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                  ForEach(self.presenter.getGamesCategory(category: category.name)) { game in
                    HorizontalHomeRow(game: game)
                      .frame(width: 120, height: 150)
                      .padding(.horizontal, 6)
                  }
                }.padding([.leading, .trailing], 6)
              }
            }
          }
        }
      }
    }
    .foregroundColor(.white)
    .onAppear {
      self.presenter.getCategories()
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView(presenter: GamePresenter())
  }
}
