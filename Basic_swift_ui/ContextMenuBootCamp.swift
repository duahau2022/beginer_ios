//
//  ContextMenuBootCamp.swift
//  Basic_swift_ui
//
//  Created by HungLD on 19/02/2023.
//

import SwiftUI

struct ContextMenuBootCamp: View {
    @State var backgroundColor : Color = .blue
    var body: some View {
        VStack(alignment: .leading,spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .red
            }, label: {
                Label("Button 1", systemImage: "flame.fill")
            })
            Button(action: {
                backgroundColor = .green
            }, label: {
                Label("Button 2", systemImage: "flame.fill")
            })
        })
    }
}

struct ContextMenuBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootCamp()
    }
}
