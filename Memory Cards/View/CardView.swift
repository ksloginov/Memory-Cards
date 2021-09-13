//
//  CardView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 02.09.2021.
//

import SwiftUI

struct CardView<Element: CustomStringConvertible>: View where Element: Hashable {
    
    let card: MemoryGameModel<Element>.Card
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                
                let shape = RoundedRectangle(cornerRadius: Constants.cardCornerRadius)
                if card.isFaceUp {
                    shape
                        .foregroundColor(.white)
                    shape
                        .stroke(lineWidth: Constants.strokeLineWidth)
                        .foregroundColor(.red)
                    Text(card.content.description)
                        .font(.system(size: min(proxy.size.height, proxy.size.width) * 0.7))
                } else if card.isMatched {
                    Color.clear
                } else {
                    shape
                        .foregroundColor(.red)
                }
            }
        }
    }
}

fileprivate struct Constants {
    static let cardCornerRadius: CGFloat = 20.0
    static let strokeLineWidth: CGFloat = 3.0
}
