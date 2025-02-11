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
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center) {
                Text("Flag Dash")
                    .bold()
                    .font(.largeTitle)
                Text("Press the button to start").foregroundColor(.gray)
                }
                .padding()
                
                Button("Play"){
                    
                        }
                    }
                }
            }
        
    


#Preview {
    ContentView()
}
