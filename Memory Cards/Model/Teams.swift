//
//  Teams.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 16.09.2021.
//

import Foundation

struct Teams: Codable {
    let suggestedTeams: [Team]
}

struct Team: Codable {
    let id: Int
    let name: String
}
