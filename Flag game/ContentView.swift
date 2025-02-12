//
//  ContentView.swift
//  Flag game
//
//  Created by QHS on 2/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
                
                Button("Play"){
                        }
                Button("Instructions"){
                    
        }
                    }
                }
            

    


#Preview {
    ContentView()
}
