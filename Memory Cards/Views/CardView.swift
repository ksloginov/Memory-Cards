//
//  CardView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 02.09.2021.
//

import SwiftUI

struct CardView: View {
    
    @State var isFlipped: Bool = false
    
    let content: String
    
    var body: some View {
        
        ZStack {
            let shape = RoundedRectangle(cornerRadius: Constants.cardCornerRadius)
            if isFlipped {
                shape
                    .padding(.horizontal)
                    .foregroundColor(.white)
                shape
                    .stroke(lineWidth: Constants.strokeLineWidth)
                    .padding(.horizontal)
                    .foregroundColor(.red)
                Text(content)
                    .font(.largeTitle)
                    .padding()
            } else {
                shape
                    .padding(.horizontal)
                    .foregroundColor(.red)
            }
        }
        .onTapGesture {
            isFlipped = !isFlipped
        }
    }
    
    struct Constants {
        static let cardCornerRadius: CGFloat = 20.0
        static let strokeLineWidth: CGFloat = 3.0
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(content: "❤️")
        CardView(content: "❤️")
            .preferredColorScheme(.dark)
    }
}
