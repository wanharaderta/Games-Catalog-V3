//
//  ContentView.swift
//  gamescatalog
//
//  Created by Wanhar on 10/06/21.
//

import SwiftUI
import Resolver
import Game

struct ContentView: View {
  
  @Injected var gamePresenter: GamePresenter
  
    var body: some View {
        HomeView(presenter: gamePresenter)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
