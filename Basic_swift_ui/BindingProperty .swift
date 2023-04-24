//
//  BindingProperty .swift
//  Basic_swift_ui
//
//  Created by HungLD on 18/02/2023.
//

import SwiftUI

struct BindingProperty_: View {
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Hello"
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text(title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView : View {
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var coloButton : Color = .yellow
    var body: some View{
        Button(action: {
            backgroundColor = .blue
            coloButton = .red
            title = "Hi HungLD"
        }, label: {
            Text("Change Color")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(coloButton)
                .cornerRadius(10)
        })
    }
}

struct BindingProperty__Previews: PreviewProvider {
    static var previews: some View {
        BindingProperty_()
    }
}
