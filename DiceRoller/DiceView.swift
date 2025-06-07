//
//  DiceView.swift
//  DiceRoller
//
//  Created by Kaung Maw Aung on 07/06/2025.
//

import SwiftUI

struct DiceView: View {
    
    var face: String
    var size: Double
    
    var body: some View {
        Image(face)
            .resizable()
            .frame(width: size, height: size)
            .clipShape(
                RoundedRectangle(
                    cornerSize: CGSize(width: size * (3/20), height: size * (3/20))
                )
            )
    }
}

#Preview {
    DiceView(face: "face-one", size: 200)
}
