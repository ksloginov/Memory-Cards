//
//  Memory_CardsApp.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 27.08.2021.
//

import SwiftUI

@main
struct Memory_CardsApp: App {
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                GameListView()
            }
        }
    }
}
