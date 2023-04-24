//
//  ExtractSubviews.swift
//  Basic_swift_ui
//
//  Created by HungLD on 18/02/2023.
//

import SwiftUI

struct ExtractSubviews: View {
    
    var body: some View {
        ZStack {
            //background
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            //content
            contentLayer
            
        }
    }
    
    var contentLayer : some View {
        HStack {
            ExtractedView(title: "Hello", color: .red)
            ExtractedView(title: "Hello", color: .red)
            ExtractedView(title: "Hello", color: .red)
        }
    }

    
  
}
struct ExtractSubviews_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviews()
    }
}

struct ExtractedView: View {
    let title: String
    let color: Color
    var body: some View {
        VStack{
            Text(title)
                .foregroundColor(color)
            
            Button(action: {
                
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
}
