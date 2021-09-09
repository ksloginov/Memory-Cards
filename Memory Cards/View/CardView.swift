//
//  CardView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 02.09.2021.
//

import SwiftUI

struct CardView: View {
    
    let card: Card
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: Constants.cardCornerRadius)
            if card.isFaceUp {
                shape
                    .foregroundColor(.white)
                shape
                    .stroke(lineWidth: Constants.strokeLineWidth)
                    .foregroundColor(.red)
                Text(card.content)
                    .font(.largeTitle)
            } else {
                shape
                    .foregroundColor(.red)
            }
        }
    }
    
    struct Constants {
        static let cardCornerRadius: CGFloat = 20.0
        static let strokeLineWidth: CGFloat = 3.0
    }
}
