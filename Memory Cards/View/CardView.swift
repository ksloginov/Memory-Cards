//
//  CardView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 02.09.2021.
//

import SwiftUI

struct CardView<Content: View>: View {
    
    var card: MemoryGameModel<String>.Card
    
    var content: Content
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                content
                    .rotationEffect(Angle.degrees(card.isMatched ? 360 : 0))
                    .animation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false))
                    .font(.system(size: 32.0))
                    .scaleEffect(scale(thatFits: geometry))
            }
            .cardify(isFaceUp: card.isFaceUp)
        }
    }
    
    private func scale(thatFits geometry: GeometryProxy) -> CGFloat {
        return min(geometry.size.width, geometry.size.height) / (32.0 / Constants.fontScale)
    }
}

private struct Constants {
    static let fontScale: CGFloat = 0.7
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGameModel<String>.Card(id: 42, isFaceUp: true, isMatched: false, content: "🚀"), content: Text("🚀"))
    }
}
