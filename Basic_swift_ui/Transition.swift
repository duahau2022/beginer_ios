//
//  Transition.swift
//  Basic_swift_ui
//
//  Created by HungLD on 18/02/2023.
//

import SwiftUI

struct Transition: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button"){
                    showView.toggle()
                }
                Spacer()
            }
            
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height *  0.5)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        
        
    }
}


struct Transition_Previews: PreviewProvider {
    static var previews: some View {
        Transition()
    }
}
