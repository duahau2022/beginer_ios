//
//  ScrollViewReaderToAutoScroll.swift
//  Basic_swift_ui
//
//  Created by HungLD on 26/02/2023.
//

import SwiftUI

struct ScrollViewReaderToAutoScroll: View {
    var body: some View {
        ScrollView {
            ScrollViewReader { proxy in
                Button("Click here to go to #30"){
                    withAnimation(.spring()){
                        proxy.scrollTo(30,anchor: .center)
                    }
                }
                ForEach(0 ..< 50){ index in
                    
                    Text("this is \(index)")
                        .font(.headline)
                        .frame(height: 200)
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                        .padding()
                        .id(index)
                    
                }
            }
        }
    }
}

struct ScrollViewReaderToAutoScroll_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderToAutoScroll()
    }
}
