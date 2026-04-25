//
//  ContentView.swift
//  ProgressView-SwiftUI
//
//  Created by Andreia Silva Aguiar on 2026-04-20.
//

import SwiftUI

struct ContentView: View {
    @State var currentlyValue = 5.0
    
    var body: some View {
        List {
            Label("Golf", systemImage: "car")
            Label("Golf", systemImage: "car")
            Label("Golf", systemImage: "car")
            Label("Golf", systemImage: "car")
            Label("Golf", systemImage: "car")
            Label("Golf", systemImage: "car")
            Label("Golf", systemImage: "car")
            
        }
        //.refreshable {
        //    print("[carregando..]")
        //}
        .overlay(MLoadingView(isShowing: true))
    }
}

#Preview {
    ContentView()
}
