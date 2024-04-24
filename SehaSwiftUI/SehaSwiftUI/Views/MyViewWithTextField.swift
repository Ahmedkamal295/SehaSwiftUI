//
//  MyViewWithTextField.swift
//  SehaSwiftUI
//
//  Created by Ahmed Kamal on 24/04/2024.
//

import SwiftUI

struct MyViewWithTextField: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter text", text: $text)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .padding(.horizontal)
        }
    }
}

//// Preview code
//struct MyViewWithTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        MyViewWithTextField()
//    }
//}
