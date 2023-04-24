//
//  TapGestureBootcamp.swift
//  Basic_swift_ui
//
//  Created by HungLD on 20/02/2023.
//

import SwiftUI

struct TapGestureBootcamp: View {
    @State var backgroundColor : Color = .red
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(.all)
            
            Text("TAP Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .cornerRadius(25)
//                .onTapGesture {
//                    backgroundColor = .green
//                }
                        .onTapGesture(count: 3, perform: {
                            backgroundColor = .yellow
                        })
                }
    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
