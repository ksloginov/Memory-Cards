//
//  FootballMemoryGameView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 15.09.2021.
//

import SwiftUI

struct FootballMemoryGameView: View {
    @ObservedObject var viewModel: FootballGameViewModel
    
    var body: some View {
        VStack {
            AspectVGrid(items: viewModel.cards, aspectRatio: 2/3, content: { card in
                cardView(for: card)
            })
            .foregroundColor(.red)
        }
        .padding(.top, 15)
        .padding(.horizontal)
        .navigationTitle("Emojis")
        .navigationBarItems(trailing:
                                Button(action: {
                                    withAnimation {
                                        viewModel.restart()
                                    }
                                }, label: {
                                    Text("Restart")
                                })
        )
    }
    
    @ViewBuilder // <-- pay attention to this declaration. It explains to compile that this function is also a ViewBuilder
    private func cardView(for card: MemoryGameModel<String>.Card) -> some View {
        if card.isMatched && !card.isFaceUp {
            Rectangle().opacity(0.0)
        } else {
            CardView(card: card, content: Text(card.content))
                .padding(4.0)
                .aspectRatio(2/3, contentMode: .fit)
                .onTapGesture {
                    withAnimation {
                        viewModel.choose(card)
                    }
                    
                }
        }
    }
}


