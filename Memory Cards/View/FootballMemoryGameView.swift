//
//  FootballMemoryGameView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 16.09.2021.
//

import SwiftUI
import SDWebImageSwiftUI

struct FootballMemoryGameView: View {
    
    @ObservedObject var viewModel: FootballMemoryGameViewModel
    
    var body: some View {
        VStack {
            AspectVGrid(items: viewModel.cards, aspectRatio: 2/3, content: { card in
                cardView(for: card)
            })
            .foregroundColor(.red)
        }
        .padding(.horizontal)
        .navigationTitle("Football")
        .navigationBarItems(trailing: Button(action: {
            withAnimation {
                viewModel.restart()
            }
        }, label: {
            Text("Restart")
        }))
        .onAppear {
            viewModel.loadData()
        }
    }
    
    @ViewBuilder // <-- pay attention to this declaration. It explains to compile that this function is also a ViewBuilder
    private func cardView(for card: MemoryGameModel<Int>.Card) -> some View {
        if card.isMatched && !card.isFaceUp {
            Rectangle().opacity(0.0)
        } else {
            CardView(card: card, content:
                        WebImage(url: URL(string: "https://images.fotmob.com/image_resources/logo/teamlogo/\(card.content).png"))
                        .resizable()
                        .scaledToFit()
                     )
            .padding(4.0)
            .aspectRatio(2/3, contentMode: .fit)
            .onTapGesture {
                withAnimation(Animation.linear(duration: 1.0)) {
                    viewModel.choose(card)
                }
            }
        }
    }
}











