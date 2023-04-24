//
//  CustomListSwipeActions.swift
//  Basic_swift_ui
//
//  Created by HungLD on 21/02/2023.
//

import SwiftUI

struct CustomListSwipeActions: View {
    @State var fruits : [String] = [
        "apple", "orange", "banaan", "peach"
    ]
    var body: some View {
        List {
//            ForEach(fruits, id: \.self) { fruit in
//                Text(fruit.capitalized)
//            }
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(
                        edge: .trailing,
                        allowsFullSwipe: true ){
                            Button("Archive"){
                                
                            }
                            .tint(.green)
                            Button("Save"){
                                
                            }
                            .tint(.blue)
                            Button("Junk"){
                                
                            }
                            .tint(.black)
                        }
                        .swipeActions(edge:.leading, allowsFullSwipe: false){
                            Button("Share"){
                                
                            }
                        }
            }
        }
    }
}

struct CustomListSwipeActions_Previews: PreviewProvider {
    static var previews: some View {
        CustomListSwipeActions()
    }
}
