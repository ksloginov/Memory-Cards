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
    
    var emojies = ["❤️", "👨🏻‍🍳", "💩", "😡", "😧", "🤖", "🎩", "🐯", "🦺", "💍", "🎒", "🐎", "🐩", "🦧", "🐳", "🐕", "🦄", "🦀", "🐿", "🦔", "🦦", "🦢", "🦜"]
    
    @State var numerOfCards: Int = 5
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100.0))]) {
                    ForEach(emojies[0..<numerOfCards], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            .padding()
            
            Spacer()
            
            ButtonsPanel(emojies: emojies,
                         numerOfCards: $numerOfCards)
        }
    }
}
