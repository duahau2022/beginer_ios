//
//  TextFieldBootcamp.swift
//  Basic_swift_ui
//
//  Created by HungLD on 19/02/2023.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State var textFieldText : String = ""
    @State var textData : [String] = []
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button(action: {
                    if validateText() {
                        saveText()
                    }
                     

                }, label: {
                    Text("Save")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(validateText() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                ForEach(textData,id: \.self) { data in
                    Text(data)
                        .font(.title)
                        .foregroundColor(.green)
                }
                Spacer()
            }
            
            .padding()
            .navigationTitle("demo textfield")
        }
    }
    func validateText() -> Bool {
        if textFieldText.count > 3 {
            return true
        }
        return false
    }
    
    func saveText(){
        textData.append(textFieldText)
        textFieldText = ""
    }
    
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
