//
//  DetailView.swift
//  NavigationStack
//
//  Created by Andreia Silva Aguiar on 2026-04-20.
//

import SwiftUI

struct DetailView: View {
    var title = "My Title"
    var body: some View {
        Label("Detail", systemImage: "newspaper")
            .font(.largeTitle)
            .navigationTitle(title)
    }
}

#Preview {
    DetailView(title: "My Title")
}
