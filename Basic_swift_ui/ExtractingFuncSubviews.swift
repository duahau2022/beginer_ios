//
//  ExtractingFunctionsAndSubviews.swift
//  Basic_swift_ui
//
//  Created by HungLD on 18/02/2023.
//

import SwiftUI

struct ExtractingFunSubviews: View {
    @State var backgroundColor: Color = Color.pink
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View{
        VStack{
            Text("Title")
                .foregroundColor(.white)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed(){
        backgroundColor = .blue
    }
}

struct ExtractingFunctionsAndSubviews_Previews: PreviewProvider {
    static var previews: some View {
        ExtractingFunSubviews()
    }
}
