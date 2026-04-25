//
//  ContentView.swift
//  NavigationStack
//
//  Created by Andreia Silva Aguiar on 2026-04-20.
// "https://www.youtube.com/watch?v=X9Tfc7zsSGg&list=PLs5gUvDGMKI9Agz8e0C7WN6fPSq6vhv3w&index=9"

import SwiftUI

struct ContentView: View {
    var body: some View {
        var team = ["Ronaldo", "Neymar", "Kaka"]
        
        NavigationStack{
            
            List{
                
                ForEach(team, id:\.self){ player in
                    NavigationLink(player, destination: DetailView(title: player))
                    
                }

                }
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.large)
            }
        }
        
    }


#Preview {
    ContentView()
}
