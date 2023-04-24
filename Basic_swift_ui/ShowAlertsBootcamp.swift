//
//  ShowAlertsBootcamp.swift
//  Basic_swift_ui
//
//  Created by HungLD on 19/02/2023.
//

import SwiftUI

struct ShowAlertsBootcamp: View {
    @State var showAlert : Bool = false
    @State var backgroundColor : Color = Color.yellow
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            Button("Button"){
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert, content: {

                getAlert()
            })
        }
    }
    func getAlert() -> Alert {
        return Alert(
            title:  Text("This is title"),
              message: Text("Here we will describe the error"),
            primaryButton: .destructive(Text("Delete"),action: {
                backgroundColor = .red
            }),
            secondaryButton: .cancel())
    }
}

struct ShowAlertsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShowAlertsBootcamp()
    }
}
