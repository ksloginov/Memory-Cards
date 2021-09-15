//
//  Cardify.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 15.09.2021.
//

import SwiftUI

struct Cardify: AnimatableModifier {
    
    init(isFaceUp: Bool) {
        rotation = isFaceUp ? 0 : 180
    }
    
    var animatableData: Double {
        get { return rotation }
        set { rotation = newValue }
    }

    
    var rotation: Double // in degrees

    func body(content: Content) -> some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 10.0)
            if rotation < 90 {
                shape.fill(Color.white)
                shape.stroke(lineWidth: 3.0)
            } else {
                shape
            }
            
            content.opacity(rotation < 90 ? 1.0 : 0.0)
        }
        .rotation3DEffect(Angle.degrees(rotation), axis: (x: 0.0, y: 1.0, z: 0.0))
    }
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        return self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
