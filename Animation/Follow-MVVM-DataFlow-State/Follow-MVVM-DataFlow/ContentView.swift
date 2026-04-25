//
//  ContentView.swift
//  Follow-MVVM-DataFlow
//
//  Created by Andreia Silva Aguiar on 2026-04-23.
//

import SwiftUI

//MARK - VIEW
struct ContentView: View {
    @State var viewModel = ProfileViewModel()

    
    var body: some View {
        VStack {

            ProfileDataView(viewModel: $viewModel)
            ActionView(viewModel: $viewModel)

    }
        
    
}

struct ProfileDataView: View {
    @Binding var viewModel: ProfileViewModel
    var body: some View {
        //Profiel
        Image(viewModel.user.picture)
            .resizable()
            .frame(width:250, height:250)
            .padding(.bottom, 10)
            .clipShape(Capsule())

            
        Text(viewModel.user.name)
            .font(.system(size:50,weight: .bold))
        
            Text("@deia_taylor")
            .font(.system(size: 23, weight: .regular))
            .foregroundColor(.gray)
            
        Text("\(viewModel.userFollowers)")
            .font(.system(size: 80, weight: .light))
            .padding(40)
    }
}
    
    
    struct ActionView: View {
        @Binding var viewModel: ProfileViewModel
        var body: some View {
            VStack {
                //Follow ---
                Button{ viewModel.followToogle()
                        print("pressed follow")} label: {
                            Label(!viewModel.isFollowing ? "Follow" : "Unfollow", systemImage: "followIcon")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .tint(!viewModel.isFollowing ? .blue : .black)
                
                Button{ print("pressed message")} label:{
                    Label("Send message", systemImage: "MSGICON")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .disabled(!viewModel.isFollowing)
                
            }
            .padding(20)
        }
        }
    }
#Preview {
    ContentView()
}
