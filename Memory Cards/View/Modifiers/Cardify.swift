//
//  Cardify.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 15.09.2021.
//

import SwiftUI

struct Cardify: ViewModifier {
    var isFaceUp: Bool
    func body(content: Content) -> some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 10.0)
            if isFaceUp {
                shape.fill(Color.white)
                shape.stroke(lineWidth: 3.0)
            } else {
                shape
            }
            
            content.opacity(isFaceUp ? 1.0 : 0.0)
        }
    }
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        return self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
