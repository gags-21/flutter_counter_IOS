//
//  ContentView.swift
//  Shared
//
//  Created by Gagan Bhirangi on 16/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            
            Button {
                
            } label: {
                Text("+")
            }
            .tint(.blue)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 10))
            .controlSize(.large)
            .position(x: 380, y: 800)

            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
