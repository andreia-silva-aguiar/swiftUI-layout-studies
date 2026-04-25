//
//  SecondView.swift
//  ExampleSwiftUI
//
//  Created by Andreia Silva Aguiar on 2026-04-24.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Form {
            BookView(title: "A Tale of Two Cities", author: "Charles Dickens")
            BookView(title: "Exhalation", author: "Ted Chiang")
            BookView(title: "Sum", author: "David Eagleam")
        }
    }
}

#Preview {
    SecondView()
}

struct BookView: View {
    var title: String
    var author: String
    var body: some View {
        
        HStack{
            Image(systemName: "book")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.purple)
            VStack {
                Text(title)
                    .font(.title)
                Text(author)
                    .foregroundColor(.gray)
            }
            
            
            
        }
    }
}
