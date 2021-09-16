//
//  FootballMemoryGameViewModel.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 16.09.2021.
//

import Foundation

//    static let popularFootballTeams = "https://pub.fotmob.com/prod/pub/onboarding"


class FootballMemoryGameViewModel: ObservableObject {
    
    private static var clubs: [Int] = []
    
    @Published private var model: MemoryGameModel<Int> = MemoryGameModel(numberOfCards: 6, elements: clubs)
    
    func loadData() {
        guard let url = URL(string: "https://pub.fotmob.com/prod/pub/onboarding") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            
            if let data = data {
                let teams = try? JSONDecoder().decode(Teams.self, from: data).suggestedTeams
                guard let ids = teams?.map({$0.id}) else { return }
                FootballMemoryGameViewModel.clubs = ids
                
                DispatchQueue.main.async {
                    self?.model = MemoryGameModel(numberOfCards: 6, elements: FootballMemoryGameViewModel.clubs)
                }
            }
            
        }.resume()
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
