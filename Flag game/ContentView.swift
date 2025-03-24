
//  Created by QHS on 2/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
                VStack {
                    Text("Flag Dash")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 50)
                        .foregroundColor(.black)
                    
                    NavigationLink(destination: GameView()) {
                        Text("Play")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                    
                    NavigationLink(destination: Text("Instructions")) {
                        Text("Instructions")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                    
                    NavigationLink(destination: Text("Tutorial")) {
                        Text("Tutorial")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    
                }//vstack
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.yellow)
               
            }
            
        }
      
}
#Preview {
    ContentView()
}


