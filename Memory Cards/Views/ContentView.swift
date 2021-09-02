//
//  ContentView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 27.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(content: "☹️")
            CardView(content: "🏰")
            CardView(content: "🟢")
            CardView(content: "🚗") 
        }
        .foregroundColor(.red)
        .padding()
    }
}
