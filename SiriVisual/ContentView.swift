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
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
