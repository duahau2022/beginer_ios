//
//  ActionSheetBootcamp.swift
//  Basic_swift_ui
//
//  Created by HungLD on 19/02/2023.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    @State var showActionSheet : Bool = false
    var body: some View {
        Button("Click me"){
            showActionSheet.toggle()
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet )
    }
    func getActionSheet() -> ActionSheet {
        let button1: ActionSheet.Button = .default(Text("Default"))
        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
        let button3: ActionSheet.Button = .cancel()
                                
        return ActionSheet(
            title: Text("This is title"),
            message: Text("This is messenge"),
            buttons: [button1,button2,button3]
        )
                                                  
                                                  
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
