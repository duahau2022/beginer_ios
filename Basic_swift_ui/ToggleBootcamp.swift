//
//  ToggleBootcamp.swift
//  Basic_swift_ui
//
//  Created by HungLD on 19/02/2023.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var toggleIsOn: Bool = false
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn, label: {
                    Text("Change Status")
                }
            )
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            Spacer()
        }
        .padding(.horizontal,20)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
