//
//  TextEditorBootCamp.swift
//  Basic_swift_ui
//
//  Created by HungLD on 19/02/2023.
//

import SwiftUI

struct TextEditorBootCamp: View {
    @State var textEditorText : String = "This is the starting text."
    @State var saveText : String = ""
    var body: some View {
        NavigationView{
            VStack {
                TextEditor(text: $textEditorText)
                    .frame( height: 250)
                    .cornerRadius(10)
                    .colorMultiply(Color.gray)
                
                Button(action: {
                    saveText = textEditorText
                }, label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Text(saveText)
                Spacer()
            }
            .padding()
            .background(Color.white)
        }
    }
}

struct TextEditorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootCamp()
    }
}
