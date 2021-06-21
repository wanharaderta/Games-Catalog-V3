//
//  GameDetail.swift
//  GamesCatalog
//
//  Created by Wanhar on 21/06/21.
//

import SwiftUI
import Game

struct GameDetail: View {
  
  var game: GameModel
  
  let screen = UIScreen.main.bounds
  
    var body: some View {
      ZStack {
        Color.black
          .edgesIgnoringSafeArea(.all)
        
        VStack {
          HStack {
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Image("xmark.circle")
                .font(.system(size: 28))
            })
          }
          .padding(.horizontal, 22)
          
          ScrollView(.vertical, showsIndicators: false) {
            VStack {
              
              HorizontalHomeRow(game: game)
                
              GameInfoSubheadline()
            }
          }
          
          Spacer()
            
        }
        .foregroundColor(.white)
      }
    }
}

struct GameDetail_Previews: PreviewProvider {
    static var previews: some View {
      GameDetail(game: GameModel.stub)
    }
}

struct GameInfoSubheadline: View {
  var body: some View {
    HStack {
      Image(systemName: "hand.thumbsup.fill")
      
      Text("Release Date")
      
      Text("Rating")
      
      Text("Publisher")
    }
  }
}
