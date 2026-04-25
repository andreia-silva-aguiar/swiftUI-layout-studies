//
//  ContentView.swift
//  ProgressView-SwiftUI
//
//  Created by Andreia Silva Aguiar on 2026-04-20.
//

import SwiftUI

struct MLoadingView: View {
    var isShowing: Bool
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            ProgressView("Carregando...")
                .tint(.white)
                .foregroundColor(.white)
        }.opacity(isShowing ? 1 : 0)
        
        

    }

}

#Preview {
    MLoadingView(isShowing: true)
}
