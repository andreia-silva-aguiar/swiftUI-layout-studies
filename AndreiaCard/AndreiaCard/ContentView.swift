//
//  ContentView.swift
//  AndreiaCard
//
//  Created by Andreia Silva Aguiar on 2026-04-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("andreia")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Andreia Silva Aguiar")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                InfoView(text: "+1 647 452 7875", imageName: "phone.fill")
                InfoView(text: "andreia.aguiar@gmail.com", imageName: "envelope.fill")
            }
            
        }
        
        
        
        .onAppear {
            for family in UIFont.familyNames {
                print("Família: \(family)")
                for name in UIFont.fontNames(forFamilyName: family) {
                    print("-- Nome da Fonte: \(name)")
                }
            }
        }
        
    }
    
    
}


#Preview {
    ContentView()
}


