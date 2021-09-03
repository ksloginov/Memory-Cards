//
//  ButtonPanel.swift
//  Memory Cards
//
//  Created by Konstantin Loginov on 03.09.2021.
//

import SwiftUI

struct ButtonsPanel: View {
    
    let emojies: [String]
    @Binding var numerOfCards: Int
    
    var body: some View {
        HStack {
            Button(action: {
                if emojies.count > numerOfCards + 1 {
                    numerOfCards += 1
                }
            }, label: {
                Image(systemName: "plus.circle.fill")
                    .frame(width: 60.0, height: 60.0)
            })
            
            Spacer()
            
            Button(action: {
                if numerOfCards > 1 {
                    numerOfCards -= 1
                }
            }, label: {
                Image(systemName: "minus.circle.fill")
                    .frame(width: 60.0, height: 60.0)
            })
        }
        .foregroundColor(Color.red)
    }
}
