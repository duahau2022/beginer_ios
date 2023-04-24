//
//  AddingMarkups.swift
//  Basic_swift_ui
//
//  Created by HungLD on 19/02/2023.
//

import SwiftUI

struct AddingMarkups: View {
    // MARK: Comment
    //
    var body: some View {
        
        
        
        // MARK: BODY
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        
        /*
         hello comment at here
         đóng coment lại thì dùng phím: option + command + left arrow ( nút sang trái)
         */
        
    }
    // nếu muốn comment ntn thì dùng command + click chuột chọn ADD RETURN TYPE
    /// gets an alert
    /// ```
    /// show hàm này để làm gì nè
    /// ```
    ///  - Warning : báo động
    ///  - Parameter text: text description
    ///  - Returns : description
    ///  muốn xem comment của hàm đó chỉ việc sử dụng option + click chuột
    func hello(){
        
    }
    
}

struct AddingMarkups_Previews: PreviewProvider {
    static var previews: some View {
        AddingMarkups()
    }
}
