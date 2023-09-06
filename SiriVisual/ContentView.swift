//  /*
//
//  Project: SiriVisual
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.08.2023
//
//  Status: in progress | Decorated
//
//  */

import SwiftUI

struct ContentView: View {
    // @State var isRounding = false
    
    @State private var isAnimating = false
    
    
    var body: some View {
        
        VStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .foregroundColor(.red)
                .scaleEffect(isAnimating ? 1.3 : 1.0)
                .opacity(isAnimating ? 0.6 : 1.0)
                .animation(
                    Animation.easeInOut(duration: 1)
                        .repeatForever(autoreverses: true)
                )
                .onAppear() {
                    self.isAnimating = true
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Conten: View {
    var body: some View {
        VStack {
            Text("Your App")
                .foregroundColor(.red)
                .font(.largeTitle)
                .padding()
            
            ContentView()
        }
    }
}
