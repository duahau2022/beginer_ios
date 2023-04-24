//
//  CustomizingKeyboard.swift
//  Basic_swift_ui
//
//  Created by HungLD on 20/02/2023.
//

import SwiftUI

struct CustomizingKeyboard: View {
    @State private var text : String = ""
    var body: some View {
        VStack {
            TextField("Placeholder...", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("Hello Hungld")
                }
            TextField("Placeholder...", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("Hi Hungld")
                }
            TextField("Placeholder...", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("kaka Hungld")
                }
            TextField("Placeholder...", text: $text)
                .submitLabel(.send)
                .onSubmit {
                    print("keke Hungld")
                }
        }
    }
}

struct CustomizingKeyboard_Previews: PreviewProvider {
    static var previews: some View {
        CustomizingKeyboard()
    }
}
