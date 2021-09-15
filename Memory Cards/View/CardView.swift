//
//  CardView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 02.09.2021.
//

import SwiftUI

struct CardView: View {
    
    var card: MemoryGameModel<String>.Card
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                let shape = RoundedRectangle(cornerRadius: Constants.cornerRadius)
                if card.isFaceUp {
                    shape
                        .fill()
                        .foregroundColor(.white)
                    shape
                        .stroke(lineWidth: Constants.lineWidth)
                    Text(card.content)
                        .font(Font.system(size: min(geometry.size.width, geometry.size.height) * Constants.fontScale))
                } else {
                    shape
                        .fill()
                }
            }
        }
    }
    
    private struct Constants {
        static let cornerRadius: CGFloat = 10.0
        static let lineWidth: CGFloat = 3.0
        static let fontScale: CGFloat = 0.7
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGameModel<String>.Card(id: 42, isFaceUp: true, isMatched: false, content: "🚀"))
    }
}
