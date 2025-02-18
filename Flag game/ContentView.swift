//
//  ContentView.swift
//  Flag game
//
//  Created by QHS on 2/6/25.
//

import SwiftUI
struct GameView: View {
struct ContentView: View {
    var body: some View {
        @State var showingInstructions = false
        @State var score = 0
        NavigationStack{
            ZStack {
                Image("earth-background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                VStack {
                    Text("Flag Dash")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    HStack {
                        ForEach(0..<8, id: \.self) { index in
                            Image("flag\(index)")
                                .resizable()
                        }
                    }
                }
                
            }
            NavigationStack{
                
            Button("Play") {
                NavigationLink(destination:GameView()) {
                    Text("Play")
                        .font(.title)
                        .padding()
                        
                }
                
            }
        }
    }
    
           
                        
                    }
                }
    
    
    

#Preview {
    ContentView()
}
                }
