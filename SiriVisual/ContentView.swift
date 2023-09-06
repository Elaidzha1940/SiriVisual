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
    @State var isRounding = false
    
    var body: some View {
        
        ZStack {
            ZStack {
                
                Image("shadow")
                Image("icon-bg")
                Image("pink-top")
                    .rotationEffect(.degrees(isRounding ? 320 : -360))
                    .hueRotation(.degrees(isRounding ? -270 : 60))
                
                Image("pink-left")
                    .rotationEffect(.degrees(isRounding ? -360 : 180))
                    .hueRotation(.degrees(isRounding ? -220 : 300))
                
                Image("middle-blue")
                    .rotationEffect(.degrees(isRounding ? -360 : 420))
                    .hueRotation(.degrees(isRounding ? -150 : 0))
                    .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: isRounding ? -5 : 15))
                
                Image("intersect")
                    .rotationEffect(.degrees(isRounding ? 30 : -420))
                    .hueRotation(.degrees(isRounding ? 0 : 720))
                    .rotation3DEffect(.degrees(15), axis: (x: 1, y: 1, z: 1), perspective: isRounding ? 5 : -5)
                
                Image("green-right")
                    .rotationEffect(.degrees(isRounding ? -300 : 360))
                    .hueRotation(.degrees(isRounding ? 300 : -15))
                    .rotation3DEffect(.degrees(15), axis: (x: 1, y: isRounding ? -1 : 1, z: 0))
                
                Image("green-left")
                    .rotationEffect(.degrees(isRounding ? 300 : -360))
                    .hueRotation(.degrees(isRounding ? 180 : 50))
                    .rotation3DEffect(.degrees(75), axis: (x: 1, y: isRounding ? -5 : 15, z: 0))
                
                Image("bottom-pink")
                    .rotationEffect(.degrees(isRounding ? 400 : -360))
                    .hueRotation(.degrees(isRounding ? 0 : 230))
                    .opacity(0.25)
                    .blendMode(.multiply)
                    .rotation3DEffect(.degrees(75), axis: (x: 5, y: isRounding ? -1 : 45, z: 0))
            }
            .blendMode(isRounding ? .hardLight : .difference)
            
            Image("highlight")
                .rotationEffect(.degrees(isRounding ? 360 : 250))
                .hueRotation(.degrees(isRounding ? 0 : 230))
                .padding()
                .onAppear {
                    withAnimation(.easeInOut(duration: 12).repeatForever(autoreverses: false)) {
                        isRounding.toggle()
                    }
                }
        }
        .scaleEffect(0.8)
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
