
//  GameView.swift
//  Flag game
//
//  Created by QHS on 2/18/25.
//

import SwiftUI

struct SomeFlag : View {
    let flagImageName : String
    
    var body: some View {
        Image(flagImageName)
            .resizable()
            .frame(width: 200, height: 100)
            .clipShape(Rectangle())
            .shadow(radius: 2)
    }
}

struct GameView: View {
    @State private var showingScore = false
    @State private var correctAnswerCount = 0
    @State private var score: Int = 0
    @State private var scoreMessage = ""
    @State private var scoreTitle = ""
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var countries = ["Brazil", "Japan", "Denmark", "Morocco", "Italy" , "Serbia", "China", "France", "Guernsey", "Togo", "Canada" ,"Mexico","USA","Russia","Australia"].shuffled()
    @State private var roundsPlayed = 0
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.9, green: 0.74, blue: 0.26),location: 0.3),
            ], center: .top, startRadius: 100, endRadius: -100)
            
            
            VStack(spacing:50) {
                VStack() {
                    Text("CLICK ON THE FLAG!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding()
                    Text(countries[correctAnswer])
                        .font(.title)
                        .fontWeight(.medium)
                        .padding(.bottom, 10)
                    Text("Score: \(score)")
                        .foregroundColor(.black)
                        .fontWeight(.light)
                }
                ForEach(0..<3) { number in
                    Button(action: {
                        if true == self.evaluateFlag(myAnswer: number){
                            
                        } else {
                            
                        }
                    },label: {
                        SomeFlag(flagImageName: String(countries[number]))
                        
                    })
                    
                } // foreeach

                Text("Round: \(roundsPlayed)/8")
                    .fontWeight(.light)
            } //Vstack
        }
        .ignoresSafeArea()
        .alert(isPresented: $showingScore) {
            Alert(title: Text(scoreMessage), message: Text(scoreMessage), dismissButton: .default(Text("Continue")){
                self.askQuestions()
            })
        }
    } //body
    
    
    func evaluateFlag(myAnswer : Int) -> Bool {
        var rc = false
        
    //func chosenFlag(_ number: Int) {
        if myAnswer == correctAnswer {
            score += 1
            scoreMessage = "Correct! Your score is \(score)."
        } else {
            scoreMessage = "Wrong! That's the flag of \(countries[myAnswer]). Your score is \(score)."
        }
        
        showingScore = true
        roundsPlayed += 1
        if roundsPlayed == 8 {
            scoreMessage = "Game over, your score out of 8 is \(score)"
            showingScore = true
            roundsPlayed = 0
            score = 0
        }
        
        return rc
    }
    func askQuestions() {
        countries.shuffle()
        correctAnswer = Int.random(in:0...2)
        
    }
}






#Preview {
    GameView()
    
    
}




