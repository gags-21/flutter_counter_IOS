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
        
        ZStack{
            
            VStack{
                
                Text("You have pushed the button this many times:").padding()
                Text(String(count)).padding()
                
            }
            extractedFunc()
        
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
