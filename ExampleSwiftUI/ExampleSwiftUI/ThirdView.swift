//
//  ThirdView.swift
//  ExampleSwiftUI
//
//  Created by Andreia Silva Aguiar on 2026-04-24.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        ScrollView {

            VStack {
                Text("Hello world")
                SecureField("Placeholder", text: .constant(""))
                Stepper(value: .constant(4), in: 1...10) {
                    Text("Stepper")
                }
            }
            Picker(selection: .constant(1), label: Text("Picker")) {
                Text("1").tag(1)
                Text("2").tag(2)
            }
            
        }
        

    }
}

#Preview {
    ThirdView()
}
