//
//  onAppearOnDisappear.swift
//  Basic_swift_ui
//
//  Created by HungLD on 20/02/2023.
//

import SwiftUI

struct onAppearOnDisappear: View {
    @State var myText: String = "Start text"
    @State var count : Int = 0
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50){ _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    myText = " This is the new text!"
                }
            })
            .onDisappear(perform: {
                myText = "Ending Text"
            })
            .navigationTitle("On Appear: \(count)")
        }
        
    }
}

struct onAppearOnDisappear_Previews: PreviewProvider {
    static var previews: some View {
        onAppearOnDisappear()
    }
}
