//
//  LongPressGestureView.swift
//  Basic_swift_ui
//
//  Created by HungLD on 26/02/2023.
//

import SwiftUI

struct LongPressGestureView: View {
    
    @State var isComplete: Bool = false;
    @State var isSuccess: Bool = false;
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(isSuccess ? Color.green : Color.blue)
                .frame(maxWidth: isSuccess ? .infinity : 0)
                .frame(height: 55)
                .frame(maxWidth: .infinity,alignment: .leading)
                .background(Color.gray)
            HStack {
                Text("CLICK HERE")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .onLongPressGesture(minimumDuration: 1.0 , maximumDistance: 50)
                                { (isPressing) in
                                    if isPressing {
                                        withAnimation(.easeInOut(duration: 1.0)){
                                            isComplete = true
                                        }
                                    }
                                    else {
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
                                            if !isSuccess {
                                                withAnimation(.easeInOut){
                                                    isSuccess = false
                                                }
                                            }
                                        }
                                    }
                    
                } perform: {
                        //at the min duration
                    withAnimation(.easeInOut){
                        isSuccess = true
                    }
                    }
                Text("RESET")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .onTapGesture {
                        isSuccess = false
                        isComplete = false
                    }
            }
        }
    }
}

struct LongPressGestureView_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureView()
    }
}
