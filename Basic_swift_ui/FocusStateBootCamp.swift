//
//  FocusStateBootCamp.swift
//  Basic_swift_ui
//
//  Created by HungLD on 21/02/2023.
//

import SwiftUI

struct FocusStateBootCamp: View {
    @State private var username : String = ""
    @FocusState private var usernameInFocus : Bool
    var body: some View {
        VStack{
            TextField("add your name here...", text: $username)
                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button(action: {
                usernameInFocus.toggle()
            }, label: {
                Text("click focus")
                    .font(.largeTitle)
                    
            })
            
        }
        .padding(40)
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                self.usernameInFocus = true
            }
        }
    }
}

struct FocusStateBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootCamp()
    }
}
