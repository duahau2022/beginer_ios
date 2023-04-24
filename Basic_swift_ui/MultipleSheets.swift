//
//  MultipleSheets.swift
//  Basic_swift_ui
//
//  Created by HungLD on 26/02/2023.
//

import SwiftUI

struct RandomeModule : Identifiable{
    let id = UUID().uuidString
    let title : String
}

struct MultipleSheets: View {
    @State var selectedModel: RandomeModule? = nil
    var body: some View {
        ScrollView {
            VStack(spacing: 20){
                ForEach(0..<50 ){ index in
                    Button("Button \(index)"){
                        selectedModel = RandomeModule(title: "Hello \(index)")
                    }
                }
            }
            .sheet(item: $selectedModel, content: { model in
                NextScreen(selectedModel: model)
                
            })
        }
    }
}

struct NextScreen: View {
    let selectedModel : RandomeModule
    var body: some View {
        Text("heloo \(selectedModel.title)")
    }
}
struct MultipleSheets_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheets()
    }
}
