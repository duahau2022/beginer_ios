//
//  AddBadges.swift
//  Basic_swift_ui
//
//  Created by HungLD on 21/02/2023.
//

import SwiftUI
// List
// TabView
struct AddBadges: View {
    var body: some View {
        List {
            Text("hello, Hungld")
                .badge("new item")
            Text("hello, Hungld")
            Text("hello, Hungld")
        }
//        TabView {
//            Color.red
//                .tabItem{
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(5)
//            Color.green
//                .tabItem{
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//            Color.yellow
//                .tabItem{
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//
//        }
    }
}

struct AddBadges_Previews: PreviewProvider {
    static var previews: some View {
        AddBadges()
    }
}
