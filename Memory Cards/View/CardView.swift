//
//  CardView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 02.09.2021.
//

import SwiftUI

struct CardView<Value: Equatable, Content: View>: View {
    
    var card: MemoryGameModel<Value>.Card
    var content: Content
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                content
                    .rotationEffect(Angle.degrees(card.isMatched ? 360 : 0))
                    .animation(Animation.easeOut(duration: 2).repeatForever())
            }
            .cardify(isFaceUp: card.isFaceUp)
        }
    }
    
    private func size(_ proxy: GeometryProxy) -> CGFloat {
        return min(proxy.size.width, proxy.size.height) / (32.0 / Constants.fontScale)
    }
}

private struct Constants {
    static let fontScale: CGFloat = 0.7
}
