//
//  NavigationLink.swift
//  Basic_swift_ui
//
//  Created by HungLD on 19/02/2023.
//

import SwiftUI

struct NavigationLinkBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
               
                NavigationLink("Hello, World!") { OtherScreen() }
                
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            // để hiện thị Title
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "person.fill")
                },
                                trailing: NavigationLink(destination: OtherScreen(), label: {
                Image(systemName: "gear")
            }))
        }
    }
}


struct OtherScreen: View {
    @Environment(\.presentationMode) var presentationModel
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                presentationModel.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            })
        }
    }
}

struct NavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkBootcamp()
    }
}
