//
//  MemoryGameModel.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 09.09.2021.
//

import Foundation

struct MemoryGameModel {
    
    var cards: [Card]
    
    init(numberOfCards: Int, elements: [String]) {
        cards = []
        
        for item in elements.prefix(numberOfCards).enumerated() {
            cards.append(Card(id: item.offset * 2, content: item.element))
            cards.append(Card(id: item.offset * 2 + 1, content: item.element))
        }
    }
    
    
    func chooseCard(card: Card) {
        print("User clicked on \(card.content); ID: \(card.id)")
    }
    
}

struct Card: Identifiable, Hashable {
    let id: Int
    
    var isFaceUp: Bool = false
    var isMatched: Bool = false
    let content: String
}
