//
//  ContentView.swift
//  Symbols&Labels
//
//  Created by Andreia Silva Aguiar on 2026-04-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 35) {
            
            Image(systemName: "airpods")
                .foregroundStyle(.red)
                .symbolVariant(.fill)
            
            Image(systemName: "airpodsmax")
                .foregroundStyle(.blue)
                
            Image(systemName: "macbook")
                .foregroundStyle(.yellow)
                .symbolVariant(.slash)
            
            Image(systemName: "ipad")
                .foregroundStyle(.purple)
                .symbolVariant(.circle)
            
            Image(systemName: "macmini")
                .foregroundStyle(.green)
                .symbolVariant(.rectangle)
        }
        .font(.system(size: 80))
        
    }
}

#Preview {
    ContentView()
}
