//
//  Animations.swift
//  Basic_swift_ui
//
//  Created by HungLD on 18/02/2023.
//

import SwiftUI

struct Animations: View {
    @State var isAnimated : Bool = false
    var body: some View {
        VStack {
            Button("Button"){
                withAnimation(Animation
                    .default.repeatForever(autoreverses: true)){
                        isAnimated.toggle()
                    }
            }
            
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            Spacer()
            
        }
    }
}

struct Animations_Previews: PreviewProvider {
    static var previews: some View {
        Animations()
    }
}
