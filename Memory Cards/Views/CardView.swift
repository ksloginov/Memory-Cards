//
//  CardView.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 02.09.2021.
//

import SwiftUI

struct CardView: View {
    
    var isFlipped: Bool {
        return Bool.random()
    }
    
    let content: String
    
    var body: some View {
        
        ZStack {
            if isFlipped {
                RoundedRectangle(cornerRadius: 20)
                    .padding(.horizontal)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3.0)
                    .padding(.horizontal)
                    .foregroundColor(.red)
                Text(content)
                    .font(.largeTitle)
                    .padding()
            } else {
                RoundedRectangle(cornerRadius: 20)
                    .padding(.horizontal)
                    .foregroundColor(.red)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(content: "❤️")
        CardView(content: "❤️")
            .preferredColorScheme(.dark)
    }
}
