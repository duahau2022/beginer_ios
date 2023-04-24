//
//  TabViewPageTabView.swift
//  Basic_swift_ui
//
//  Created by HungLD on 19/02/2023.
//

import SwiftUI

struct TabViewPageTabView: View {
    @State var selectTab = 0
    var body: some View {
        TabView(selection: $selectTab) {
            HomeView(selectTab: $selectTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            Text("Browse Tab")
                .tabItem {
                    Image(systemName: "globe")
                    
                    Text("Browse")
                }
                .tag(1)
            Text("Profile Tab")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
    }
}

struct TabViewPageTabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewPageTabView()
    }
}

struct HomeView: View {
    @Binding var selectTab: Int
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Button(action: {
                    selectTab = 2
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                })
            }
            
        }
        
    }
}
