//
//  GameListview.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 16.09.2021.
//

import SwiftUI

struct GameListView: View {
    private let emojiGameViewModel = EmojiMemoryGameViewModel()
    private let footballGameViewModel = FootballMemoryGameViewModel()
    
    var body: some View {
        List {
            NavigationLink(destination: EmojiMemoryGameView(viewModel: emojiGameViewModel)) {
                Text("Emoji game 🤖")
                    .font(.largeTitle)
            }
            
            NavigationLink(destination: FootballMemoryGameView(viewModel: footballGameViewModel)) {
                Text("Football game ⚽️")
                    .font(.largeTitle)
            }
        }
        .padding(.vertical)
        .navigationTitle("Selet game")
    }
}
