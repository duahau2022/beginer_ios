//
//  Backgrounds.swift
//  Basic_swift_ui
//
//  Created by HungLD on 22/02/2023.
//

import SwiftUI

struct Backgrounds: View {
    var body: some View {
        VStack{
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 50,height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("helo")
                .frame(maxHeight: .infinity)
        )
    }
}

struct Backgrounds_Previews: PreviewProvider {
    static var previews: some View {
        Backgrounds()
    }
}
