//
//  TopGameView.swift
//  GamesCatalog
//
//  Created by Wanhar on 17/06/21.
//

import SwiftUI
import Game
import SDWebImageSwiftUI

struct TopGameView: View {
  var game: GameModel
  
  var body: some View {
    VStack {
      WebImage(url: URL(string: game.bgImage))
        .resizable()
        .scaledToFit()
        .clipped()
    }
  }
}

struct TopGameView_Previews: PreviewProvider {
  static var previews: some View {
    TopGameView(game: GameModel.stub)
  }
}
