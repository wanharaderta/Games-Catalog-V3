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
  
  var body: some View {
    ZStack {
      Color.black.edgesIgnoringSafeArea(.all)
      ScrollView(.vertical, showsIndicators: false) {
        VStack {
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
                      .frame(width: 160, height: 250)
                      .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 8))
                  }
                }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
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
