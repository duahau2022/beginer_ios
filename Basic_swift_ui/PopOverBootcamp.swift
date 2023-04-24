//
//  PopOverBootcamp.swift
//  Basic_swift_ui
//
//  Created by HungLD on 19/02/2023.
//

import SwiftUI

struct PopOverBootcamp: View {
    @State var showNewScreen : Bool = false
   
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button("Open PopOver"){
                    showNewScreen.toggle()
                }
                Spacer()
            }
            // Method 1 - sheet
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            //method 2 - transition
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top,100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
            //method 3 - Animation Offset
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top,100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: 0)
        }
    }
}
struct NewScreen: View {
    //Method1
//    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            Button(action: {
//                Method1
//                presentationMode.wrappedValue.dismiss()
                //Method 2
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            })
        }
    }
}

struct PopOverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopOverBootcamp()
    }
}
