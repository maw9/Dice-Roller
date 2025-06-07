//
//  ContentView.swift
//  DiceRoller
//
//  Created by Kaung Maw Aung on 06/06/2025.
//

import SwiftUI

struct ContentView: View {
    
    let diceFaces = ["face-one", "face-two", "face-three", "face-four", "face-five", "face-six"]
    @State private var currentFace = "face-one"
    
    var body: some View {
        VStack {
            DiceView(face: currentFace, size: 200)
            
            Button {
                currentFace = diceFaces.randomElement()!
            } label: {
                Label("Roll", systemImage: "dice")
            }
            .buttonStyle(.borderedProminent)
            .padding(.top, 24)
        }
    }
}

#Preview {
    ContentView()
}
