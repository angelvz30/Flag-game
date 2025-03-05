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
    @State var correctAnswer = Int.random(in: 0...2)
    @State var selectedFlag = -1
    @State var index: Int = 0
    static let allCountries = ["Brazil", "Japan", "Denmark", "Morocco", "Italy", "Serbia", "China", "France", "Guernsey", "Togo", "Canada"]
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.9, green: 0.74, blue: 0.26),location: 0.3),
            ], center: .top, startRadius: 100, endRadius: -100)
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
                        Text(flagCountries[correctAnswer])
                        
                        ForEach(0..<3) { number in
                            Button {
                                //when clicked run this
                                if index == self.correctAnswer {
                                    self.correctAnswerCount += 1
                                }
                                self.selectedFlag = index
                                
                            } label:{
                                Image(flagCountries[number])
                                    .rotation3DEffect(.degrees(self.selectedFlag == index ? 360 : 0), axis: (x: 0, y: 1, z: 0))
                                    .opacity(selectedFlag == -1 || selectedFlag != index ? 1 : 0)
                                    .saturation(selectedFlag == -1 || selectedFlag != index ? 1 : 0)
                                
                            }
                            
                            
                            Image(self.flagCountries[index])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                        }
                            
                    }
                }
            }
        }
    }
    
    
    
    
    
#Preview {
    //GameView()
        
        
    }
}
