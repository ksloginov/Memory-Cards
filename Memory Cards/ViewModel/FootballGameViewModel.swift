//
//  FootballGameViewModel.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 15.09.2021.
//

import Foundation

class FootballGameViewModel: ObservableObject {
    
    private static let emojies = ["❤️", "👨🏻‍🍳", "💩", "😡", "😧", "🤖", "🎩", "🐯", "🦺", "💍", "🎒", "🐎", "🐩", "🦧", "🐳", "🐕", "🦄", "🦀", "🐿", "🦔", "🦦", "🦢", "🦜"]
    
    @Published private var model: MemoryGameModel<String> = MemoryGameModel(numberOfCards: 9, elements: emojies)
    
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
