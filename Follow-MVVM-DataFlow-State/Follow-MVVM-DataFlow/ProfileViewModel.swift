//
//  ProfileViewModel.swift
//  Follow-MVVM-DataFlow
//
//  Created by Andreia Silva Aguiar on 2026-04-23.
//

import Foundation
struct ProfileViewModel {
    var isFollowing = false
    var userFollowers = String()
    
    var user = User(picture: "perfil_andreia",
                    name: "Andreia Aguiar",
                    nick: "@deia_taylor",
                    followers: 22643)
    init(){
       loadFollowers()
        
    }
    mutating func followToogle(){
        self.isFollowing.toggle()
        self.isFollowing ? (self.user.followers += 1) : (self.user.followers -= 1)
        print ("self.user.followers \(self.user.followers)")
        self.loadFollowers()
        
    }
    
    mutating func loadFollowers(){
        self.userFollowers = customizeNumber(Value: user.followers)
    }
    
    func customizeNumber(Value: Double) -> String {
        let formater = NumberFormatter()
        formater.numberStyle = .decimal
        //formater.locale = Locale(identifier: "en_CA")
        formater.locale = Locale.current
        let shorten = formater.string(for: Value) ?? "0"
        return "\(shorten)K"
        
        
    }
}
