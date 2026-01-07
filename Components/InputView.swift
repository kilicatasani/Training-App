//
//  InputView.swift
//  demo
//
//  Created by Ata Sani on 01/06/26.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    @State var isSecureField: Bool = false
    
    var body: some View {
        VStack (alignment: .leading, spacing: 12 ){
            Text(title)
                .font(.footnote)
                .foregroundColor(.black)
                .fontWeight(.semibold)
            
            
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 14))
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 14))
            }
            Divider()
        }
        
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(text: .constant(""), title: "Email Address", placeholder: "name@example.com")
    }
}


