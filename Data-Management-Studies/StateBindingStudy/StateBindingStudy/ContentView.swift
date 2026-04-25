//
//  ContentView.swift
//  StateBindingStudy
//
//  Created by Andreia Silva Aguiar on 2026-04-19.
//

import SwiftUI

struct ContentView: View {
    @State var automaticOn = true
    @State var screenBrightness = 50.0
    
    let appearenceTitle = "APPEARENCE"
    let brightnessTitle = "BRIGHTNESS"
    let brightnessfooter = "When in Low Power Mode, auto-lock us restricted to 30 seconds."
    var body: some View {
        Form {
            
            Section(header: Text (appearenceTitle)) {
                Image("theme")
                    .resizable()
                    .scaledToFit()
                    .padding(EdgeInsets(top: 10, leading: 40, bottom: 10, trailing: 40))
                HStack {
                    Text("Automatic")
                    Toggle("", isOn: $automaticOn)
                }
                
                HStack {
                    Text("Options")
                    Spacer()
                    Text("Light Until Sunset")
                        .foregroundColor(.gray)
                        .font(.system(.callout))
                }
            }
            
            Section(header: Text(brightnessfooter) , footer: Text(brightnessfooter)){
                HStack{
                    Image(systemName: "sun.max.fill")
                        .foregroundColor(.gray)
                    Slider(value: $screenBrightness, in:0...100)
                    Image(systemName: "sun.max.fill")
                        .resizable()
                        .frame(width: 25 , height: 25)
                        .foregroundColor(.gray)
                        .onChange(of: screenBrightness) { oldValue, newValue in
                            print(screenBrightness)
                        }
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
