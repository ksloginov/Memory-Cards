//
//  CardifyModifier.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 16.09.2021.
//

import SwiftUI

struct Cardify: AnimatableModifier {

    init(isFaceUp: Bool) {
        degrees = isFaceUp ? 180 : 0
    }
    
    var animatableData: Double {
        get { return degrees }
        set { degrees = newValue }
    }
    
    var degrees: Double
    
    func body(content: Content) -> some View {
        let shape = RoundedRectangle(cornerRadius: Constants.cornerRadius)
        ZStack {
            if degrees > 90 {
                shape
                    .foregroundColor(.white)
                shape
                    .stroke(lineWidth: Constants.lineWidth)
            } else {
                shape
                    .fill()
            }
            
            content.opacity(degrees > 90 ? 1.0 : 0.0)
        }
        .rotation3DEffect(Angle(degrees: degrees), axis: (x: 0.0, y: 1.0, z: 0.0))
    }
    
    private struct Constants {
        static let cornerRadius: CGFloat = 10.0
        static let lineWidth: CGFloat = 3.0
    }
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
