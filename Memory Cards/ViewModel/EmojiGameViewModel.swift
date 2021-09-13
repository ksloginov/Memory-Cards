//
//  EmojiGameViewModel.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 09.09.2021.
//

import Foundation

class EmojiGameViewModel: ObservableObject {
    
    static var emojies = ["❤️", "👨🏻‍🍳", "💩", "😡", "😧", "🤖", "🎩", "🐯", "🦺", "💍", "🎒", "🐎", "🐩", "🦧", "🐳", "🐕", "🦄", "🦀", "🐿", "🦔", "🦦", "🦢", "🦜"]
    
    
    @Published private var model: MemoryGameModel = MemoryGameModel(numberOfCards: 4, elements: emojies)
    
    var cards: [MemoryGameModel<String>.Card] {
        return model.cards
    }
    
    
    // MARK: Intents
    func intentChooseCard(card: MemoryGameModel<String>.Card) {
        model.chooseCard(card: card)
    }
    
}
