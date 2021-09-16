//
//  EmojiMemoryGameView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 27.08.2021.
//

import SwiftUI
//
//struct Card: Identifiable {
//
//    init(content: String) {
//        self.content = content
//        self.id = content.hash
//    }
//
//    let id: Int
//    let content: String
//}

import SwiftUI

struct EmojiMemoryGameView: View {
    
    @ObservedObject var viewModel: EmojiMemoryGameViewModel
    
    var body: some View {
        VStack {
            AspectVGrid(items: viewModel.cards, aspectRatio: 2/3, content: { card in
                cardView(for: card)
            })
            .foregroundColor(.red)
        }
        .padding(.horizontal)
        .navigationTitle("Emojis")
        .navigationBarItems(trailing: Button(action: {
            withAnimation {
                viewModel.restart()
            }
        }, label: {
            Text("Restart")
        }))
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
                    withAnimation(Animation.linear(duration: 1.0)) {
                        viewModel.choose(card)
                    }
                }
        }
    }
}















struct EmojiMemoryGameView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = EmojiMemoryGameViewModel()
        EmojiMemoryGameView(viewModel: viewModel)
            .preferredColorScheme(.dark)
        EmojiMemoryGameView(viewModel: viewModel)
            .preferredColorScheme(.light)
    }
}
