//
//  crupItemInList.swift
//  Basic_swift_ui
//
//  Created by HungLD on 19/02/2023.
//

import SwiftUI

struct crupItemInList: View {
    @State var fruits: [String] = [
        "Apple", "orange","banana","peach"
    ]
    var body: some View {
        List {
            Section(
                header: Text("Fruits")){
                    ForEach(fruits, id: \.self ) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete )
                    .onMove(perform: move)
                }
        }
        .navigationTitle("Grocery List")
        .navigationBarItems( trailing: EditButton())
        
    }

    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    func move(indices : IndexSet,newOffset : Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

struct crupItemInList_Previews: PreviewProvider {
    static var previews: some View {
        crupItemInList()
    }
}
