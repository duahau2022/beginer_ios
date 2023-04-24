//
//  AsyncImageIOS15.swift
//  Basic_swift_ui
//
//  Created by HungLD on 23/02/2023.
//

import SwiftUI

struct AsyncImageIOS15: View {
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
        AsyncImage(url: url){ phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .cornerRadius(10)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
            
        }
    }
}

struct AsyncImageIOS15_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageIOS15()
    }
}
