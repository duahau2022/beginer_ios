//
//  StateProperty.swift
//  Basic_swift_ui
//
//  Created by HungLD on 18/02/2023.
//

import SwiftUI

struct StateProperty: View {
    @State var backgroundColor: Color = Color.green
    @State var myTitle : String = "My Title"
    @State var count: Int = 0
    var body: some View {
        ZStack {
            //back ground
            Color.red
                .edgesIgnoringSafeArea(.all)
            // content
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                    .foregroundColor(.white)
            
                Text("Count: \(count)")
                    .font(.headline)
                    .foregroundColor(.white)
                    .underline()
                HStack(spacing: 20){
                    Button("Button 1"){
                        backgroundColor = .yellow
                        myTitle = "button 1"
                        count -= 1
                    }
                    Button(action: {
                        backgroundColor = .blue
                        myTitle = "button 2"
                        count += 1
                        
                    }, label:  {
                        Text("Button 2")
                            .underline()
                    })
                }
            }
           
        }
    }
}

struct StateProperty_Previews: PreviewProvider {
    static var previews: some View {
        StateProperty()
    }
}
