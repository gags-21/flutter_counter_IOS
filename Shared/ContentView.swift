//
//  ContentView.swift
//  Shared
//
//  Created by Gagan Bhirangi on 16/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var count = 0
    
    var body: some View {
        
//        NavigationView{
            
            ZStack{
                
                VStack{
                    
                    Text("You have pushed the button this many times:").padding()
                    Text(String(count)).padding()
                    
                }
                extractedFunc()
                
            }
            
//            .navigationTitle("Basic app")
            
//        }
                .overlay {
                            ZStack {
                                Color.clear
                                    .background(.ultraThinMaterial)
        
                                Text("Navigation Bar")
                                    .font(.largeTitle.weight(.bold))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 20)
                            }
                            .frame(height: 70)
                            .frame(maxHeight: .infinity, alignment: .top)
                        }
    }
    
    
    func extractedFunc() -> some View {
        Button {
            count += 1
        } label: {
            Text("+")
        }
        .tint(.blue)
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.roundedRectangle(radius: 50))
        .controlSize(.large)
        .position(x: 380, y: 800)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
