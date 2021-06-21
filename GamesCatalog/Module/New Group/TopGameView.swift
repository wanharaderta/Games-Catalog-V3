//
//  TopGameView.swift
//  GamesCatalog
//
//  Created by Wanhar on 17/06/21.
//

import SwiftUI
import Game
import SDWebImageSwiftUI
import Core

struct TopGameView: View {
  var categories: [CategoryModel]
  var promotedGame: String
  
  let screen = UIScreen.main.bounds
  
  func isCategoryLast(_ cat:CategoryModel) -> Bool {
    let catCount   = categories.count
    
    if let index = categories.firstIndex(of: cat) {
      if index + 1 != catCount {
        return false
      }
    }
    return true
  }
  
  var body: some View {
    ZStack {
      WebImage(url: URL(string: promotedGame))
        .resizable()
        .scaledToFill()
        .clipped()
      
      VStack {
        Spacer()
        
        HStack {
          ForEach(categories){ category in
            HStack {
              Text(category.name)
                .font(.footnote)
                .foregroundColor(.white)
              
              if (isCategoryLast(category) == false) {
                Image(systemName: "circle.fill")
                  .foregroundColor(.blue)
                  .font(.system(size: 3))
              }
            }
          }
        }
        
        HStack {
          Spacer()
          
          SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
            
          }
          
          Spacer()
          
          WhiteButton(text: "Play", imageName: "play.fill") {
            
          }
          .frame(width: 120)
          
          Spacer()
          
          SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
            
          }
          
          Spacer()
        }
        .padding(.top, 10)
      }
      .background(
        LinearGradient.blackOacityGradient
          .padding(.top, 250)
      )
      .frame(width: screen.width)
    }
    .foregroundColor(.black)
    
  }
}

struct TopGameView_Previews: PreviewProvider {
  static var previews: some View {
    TopGameView(categories: CategoryModel.stubs, promotedGame: CategoryModel.stub.imageBackground)
  }
}
