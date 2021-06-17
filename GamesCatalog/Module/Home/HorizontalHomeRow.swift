//
//  HorizontalHomeRow.swift
//  GamesCatalog
//
//  Created by Wanhar on 17/06/21.
//

import SwiftUI
import Game
import SDWebImageSwiftUI

struct HorizontalHomeRow: View {
  var game: GameModel
  
  var body: some View {
    VStack {
      WebImage(url: URL(string: game.bgImage))
        .resizable()
    }
  }
}

struct HorizontalHomeRow_Previews: PreviewProvider {
  static var previews: some View {
    HorizontalHomeRow(game: GameModel.stub)
  }
}
