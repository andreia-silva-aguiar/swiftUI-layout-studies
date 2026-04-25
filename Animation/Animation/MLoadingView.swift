//
//  MLoadingView.swift
//  Animation
//
//  Created by Andreia Silva Aguiar on 2026-04-20.
//

import SwiftUI

struct MLoadingView: View {
    var isShowing: Bool
    @State var isAnimated = false
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack{
                Image(systemName: "star.circle")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.white, .tertiary)
                    .font(.system(size: 90))
                    .rotationEffect(.degrees(isAnimated ? 360 : 0))
                    .animation(
                        .easeInOut(duration: 1.2).repeatForever(autoreverses: false),
                        value: isAnimated)
                
                Text("Never give up!")
                    .foregroundColor(.gray)
                    .font(.caption)
                    .italic()
                    .padding(1)
            }

        }
        .onAppear(perform: {
            isAnimated = true
        })
        .opacity(isShowing ? 1 : 0)
    }
}

#Preview {
    MLoadingView(isShowing: true)
}
