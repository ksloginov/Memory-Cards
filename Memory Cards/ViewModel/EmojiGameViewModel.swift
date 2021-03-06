//
//  EmojiGameViewModel.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 09.09.2021.
//

import Foundation

class EmojiMemoryGameViewModel: ObservableObject {
    
    private static let emojies = ["âĪïļ", "ðĻðŧâðģ", "ðĐ", "ðĄ", "ð§", "ðĪ", "ðĐ", "ðŊ", "ðĶš", "ð", "ð", "ð", "ðĐ", "ðĶ§", "ðģ", "ð", "ðĶ", "ðĶ", "ðŋ", "ðĶ", "ðĶĶ", "ðĶĒ", "ðĶ"]
    
    @Published private var model: MemoryGameModel<String> = MemoryGameModel(numberOfCards: 6, elements: emojies)
    
    var cards: Array<MemoryGameModel<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGameModel<String>.Card) {
        model.choose(card: card)
    }
    
    func restart() {
        model.restart()
    }
}
