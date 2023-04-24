//
//  StepperBootcamp.swift
//  Basic_swift_ui
//
//  Created by HungLD on 19/02/2023.
//

import SwiftUI

struct StepperBootcamp: View {
    @State var stepperValue : Int = 10
    @State var widthIncrement : CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper( "Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width:  100 + widthIncrement, height: 100)
            
            Stepper( "Stepper 2"){
                incrementWidth(amount: 100 )
            } onDecrement: {
                incrementWidth(amount: -100 )
            }
        }
    }
    func incrementWidth(amount: CGFloat){
        withAnimation(.easeOut){
            widthIncrement += amount
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
