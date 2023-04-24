//
//  bottomsheet.swift
//  Basic_swift_ui
//
//  Created by HungLD on 18/02/2023.
//

import SwiftUI

struct bottomsheet: View {
    @State var showSheet : Bool = false
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.green)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            })
//            .sheet(isPresented: $showSheet, content: {
            // DO not add conditional logic
//                SecondScreen()
//            })
        }
    }
}

struct SecondScreen : View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .padding(20)
                    
            })
        }
    }
}

struct bottomsheet_Previews: PreviewProvider {
    static var previews: some View {
        bottomsheet()
    }
}
