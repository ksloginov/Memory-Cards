//
//  MemoryGameModel.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 09.09.2021.
//

import Foundation

struct MemoryGameModel<Element: CustomStringConvertible> where Element: Hashable {
    
    var cards: [Card]
    
    init(numberOfCards: Int, elements: [Element]) {
        cards = []
        
        for item in elements.prefix(numberOfCards).enumerated() {
            cards.append(Card(id: item.offset * 2, content: item.element))
            cards.append(Card(id: item.offset * 2 + 1, content: item.element))
        }
    }
    
    var chosenCardIndexFromBefore: Int? {
        get {
            let numberOfCardsUp = cards.filter({$0.isFaceUp}).count
            if numberOfCardsUp != 1 {
                return nil
            }
            
            let flippedCard = cards.first(where: {$0.isFaceUp})!
            return cards.firstIndex(of: flippedCard)
        }
    }
    
    mutating func chooseCard(card: Card) {
        
        guard !card.isMatched && !card.isFaceUp else { return }
        guard let newIndex = cards.firstIndex(of: card) else { return }
        
        if let oldIndex = chosenCardIndexFromBefore {
            if cards[oldIndex].content == cards[newIndex].content {
                cards[oldIndex].isMatched = true
                cards[newIndex].isMatched = true
            }
            
            cards[newIndex].isFaceUp = true
        } else {
            cards.indices.forEach { cards[$0].isFaceUp = $0 == newIndex }
        }
    }
 
    
    struct Card: Identifiable, Hashable {
        let id: Int
        
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        let content: Element
    }

}
