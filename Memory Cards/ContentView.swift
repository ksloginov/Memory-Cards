//
//  ContentView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 27.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3.0)
                .padding(.horizontal)
                .foregroundColor(.red)
            Text("Hello, Kristiania 2021/2022!")
                .foregroundColor(.orange)
                .padding()
        }
        .foregroundColor(.red)
        .padding()
    }
}
