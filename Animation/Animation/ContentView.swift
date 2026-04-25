//
//  ContentView.swift
//  Animation
//
//  Created by Andreia Silva Aguiar on 2026-04-20.
//

import SwiftUI

struct ContentView: View {
    @State var animatedValue = 1.0
    
    var body: some View {
        VStack {
            
            
            Spacer()
            
            Image(systemName: "flame")
                .font(.system(size: 50))
                .scaleEffect(animatedValue)
                //.opacity(0.10 * animatedValue)
                .animation(
                    .easeOut,
                    value: animatedValue
                
                )
            
            
            Spacer()
            Button("Fire"){
                animatedValue += 1
            }
            
        }
    }
}

#Preview {
    ContentView()
}
