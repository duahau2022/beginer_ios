//
//  AppStorageBootcamp.swift
//  Basic_swift_ui
//
//  Created by HungLD on 23/02/2023.
//

import SwiftUI

struct AppStorageBootcamp: View {
    @AppStorage("name") var currentUserName: String?
    var body: some View {
        VStack(spacing: 30){
            Text(currentUserName ?? "Add name here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save"){
                let name : String = "Hungld"
                currentUserName = name
                UserDefaults.standard.set(name, forKey: "name")
            }
        }
        .onAppear {
            currentUserName = UserDefaults.standard.string(forKey: "name")
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
