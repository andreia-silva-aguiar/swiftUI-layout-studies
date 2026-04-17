//
//  ContentView.swift
//  Ajust
//
//  Created by Andreia Silva Aguiar on 2026-04-16.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
 
        Form {
            Section{
                HStack {
                    Image(systemName: "airplane")
                    Text("Airplane Mode")
                    
                }

                HStack {
                    Image(systemName: "wifi")
                    Text("Wi-Fi")
                    Spacer()
                    Text("uai-Fai")
                        .font(.callout)
                        .foregroundColor(.gray)
                }
            }

            Section{
                HStack {
                    Image(systemName: "folder.fill.badge.plus")
                    Text("Notifications")
                    
                }
                HStack {
                    Image(systemName: "speaker.3.fill")
                    Text("Sounds & Haptics")
                    
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
