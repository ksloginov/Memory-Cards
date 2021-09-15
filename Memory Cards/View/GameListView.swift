//
//  GameListView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 15.09.2021.
//

import SwiftUI

struct GameListView: View {
    private let emojiGameViewModel = EmojiMemoryGameViewModel()
    private let footballGameViewModel = FootballGameViewModel()
    
    var body: some View {
        List {
            NavigationLink(destination: EmojiMemoryGameView(viewModel: emojiGameViewModel)) {
                Text("Emoji game 🤖")
                    .font(.largeTitle)
                    .padding(.vertical)
            }
            
            NavigationLink(destination: FootballMemoryGameView(viewModel: footballGameViewModel)) {
                Text("Football game ⚽️")
                    .font(.largeTitle)
                    .padding(.vertical)
            }
        }
        .navigationTitle("Select game")
    }
}
