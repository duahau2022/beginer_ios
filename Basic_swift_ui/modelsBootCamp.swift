//
//  modelsBootCamp.swift
//  Basic_swift_ui
//
//  Created by HungLD on 20/02/2023.
//

import SwiftUI
struct UserModel : Identifiable {
    let id : String = UUID().uuidString
    let displayName : String
    let userName : String
    let followerCount : Int
    let isVerified : Bool
}
struct modelsBootCamp: View {
    @State var users : [UserModel] = [
    UserModel(displayName: "hello", userName: "Hi", followerCount: 30, isVerified: true)
    ]
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct modelsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        modelsBootCamp()
    }
}
