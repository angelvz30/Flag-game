//
//  GameView.swift
//  Flag game
//
//  Created by QHS on 2/18/25.
//

import SwiftUI

struct GameView: View {
    @State var showingScore = false
    @State var showingResults = false
    @State var flagCountries = allCountries.shuffled()
    @State var correctAnswerCount = 0
    @State var score: Int = 0
    @State var selectedFlag = -1
    
    static let allCountries = ["Brazil", "Japan", "Denmark", "Morocco", "Italy", "Serbia", "China", "France", "Guernsey", "Togo", "Canada"]
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.9, green: 0.5, blue: 0.20),location: 0.3),
                .init(color: Color(red: 0.9, green: 0.74, blue: 0.26),location: 0.3),
            ], center: .top, startRadius: 100, endRadius: 200)
                .ignoresSafeArea()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("GUESS THE CORRECT FLAG")
                        .font(.largeTitle.weight(.bold))
                        .foregroundColor(.black)
            VStack(spacing: 15) {
                VStack {
                        Text("Click on the flag")
                        .foregroundStyle(.secondary)
                    }
                        }
                    }
                        
                    }
                }
                
    
        
    }

#Preview {
    GameView()
    
    
}
