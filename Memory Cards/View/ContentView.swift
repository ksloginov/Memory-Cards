//
//  ContentView.swift
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

struct ContentView: View {
    
    @ObservedObject var viewModel = EmojiGameViewModel()
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 75))]) {
                    ForEach(viewModel.cards) { card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                viewModel.intentChooseCard(card: card)
                            }
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
        }
        .padding()
    }
}
