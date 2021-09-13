//
//  DigitsGameViewModel.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 13.09.2021.
//

import Foundation

class DigitsGameViewModel: ObservableObject {
    
    static var digits = [1,2,3,4,5,6,7,8,9,0]
    
    
    @Published private var model: MemoryGameModel = MemoryGameModel(numberOfCards: 4, elements: digits)
    
    var cards: [MemoryGameModel<Int>.Card] {
        return model.cards
    }
    
    
    // MARK: Intents
    func intentChooseCard(card: MemoryGameModel<Int>.Card) {
        model.chooseCard(card: card)
    }
    
}
