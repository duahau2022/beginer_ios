//
//  Button stylesBootCamp.swift
//  Basic_swift_ui
//
//  Created by HungLD on 21/02/2023.
//

import SwiftUI

struct Button_stylesBootCamp: View {
    var body: some View {
        VStack {
            Button("Button Title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            .controlSize(.mini)
            Button("Button Title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .buttonStyle(.bordered)
            Button("Button Title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
            .buttonStyle(.borderedProminent)
            Button("Button Title"){
                
            }
            .frame(height: 55)
            .controlSize(.small)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
        }
    }
}

struct Button_stylesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        Button_stylesBootCamp()
    }
}
