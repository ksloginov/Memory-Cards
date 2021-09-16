//
//  FootballMemoryGameViewModel.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 16.09.2021.
//

import Foundation

class FootballMemoryGameViewModel: ObservableObject {
    
    private static var clubs: [Int] = []
    
    @Published private var model: MemoryGameModel<Int> = MemoryGameModel(numberOfCards: 6, elements: clubs)
    
    func loadData() {
        
    }
    
    var cards: Array<MemoryGameModel<Int>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGameModel<Int>.Card) {
        model.choose(card: card)
    }
    
    func restart() {
        model.restart()
    }
}
