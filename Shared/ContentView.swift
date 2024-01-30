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
        VStack {
            AppBar()
            GeometryReader{_ in
                ZStack{
                    VStack{
                        Text("You have pushed the button this many times:")
                        Text(String(count)).padding()
                    }
                    extractedFunc()
                        .padding()
                        .padding(.trailing)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                }
            }
        }
    }
    
    func extractedFunc() -> some View {
        Button {
            count += 1
        } label: {
            Circle()
                .fill(Color.blue)
                .frame(width: 60, height: 60)
                .shadow(radius: 5)
                .overlay(
                    Image(systemName: "plus")
                        .font(.title)
                        .foregroundColor(.white)
                )
        }
    }
}

struct AppBar : View {
    var body: some View {
        HStack {
            Text("Flutter Demo Home Page")
                .font(.title2)
                .foregroundColor(Color.white)
                .padding(.leading, 10)
                .frame(alignment: .bottom)
            Spacer()
        }
        .padding()
        .background(Color.blue)
        .shadow(radius: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
