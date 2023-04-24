//
//  if-elseAndConditional .swift
//  Basic_swift_ui
//
//  Created by HungLD on 18/02/2023.
//

import SwiftUI

struct if_elseAndConditional_: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = true
    @State var checkText: Bool = false
    var body: some View {
        VStack(spacing: 20){
            
            Text( checkText ? "hello" : "hi")
                .foregroundColor(checkText ? .red : .purple)
            
            Button("Check : \(checkText.description)"){
                checkText.toggle()
            }
            if isLoading {
                ProgressView()
            } else {
                ContentView()
            }
            
            Button("Loading: \(isLoading.description)"){
                isLoading.toggle()
            }
            
            
            
            Button("Circle Button: \(showCircle.description)"){
                showCircle.toggle()
            }
            Button("Rectangle Button: \(showRectangle.description)"){
                showRectangle.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 180,height: 180)
            }
            if !showRectangle {
                Rectangle()
                    .frame(width: 100,height: 100)
            }
            if !showCircle && showRectangle {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 200,height: 200)
            }
            
        }
    }
}

struct if_elseAndConditional__Previews: PreviewProvider {
    static var previews: some View {
        if_elseAndConditional_()
    }
}
