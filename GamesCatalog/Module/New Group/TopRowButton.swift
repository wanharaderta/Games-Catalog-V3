//
//  TopRowButton.swift
//  GamesCatalog
//
//  Created by Wanhar on 23/06/21.
//

import SwiftUI
import Game

struct TopRowButton: View {
  var body: some View {
    HStack {
      
      Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
        Image("ic_game")
          .resizable()
          .scaledToFit()
          .frame(width: 30, height: 50)
      })
      .buttonStyle(PlainButtonStyle())
      
      Spacer()
      
      Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
        Text("TV Shows")
      })
      .buttonStyle(PlainButtonStyle())
      
      Spacer()
      
      Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
        Text("Games")
      })
      .buttonStyle(PlainButtonStyle())
      
      Spacer()
      
      Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
        Text("My List")
      })
      .buttonStyle(PlainButtonStyle())
      
    }
    .padding(.leading, 10)
    .padding(.trailing, 30)
  }
}

struct TopRowButton_Previews: PreviewProvider {
    static var previews: some View {
        TopRowButton()
    }
}
