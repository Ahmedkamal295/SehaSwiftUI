//
//  LoginView.swift
//  SehaSwiftUI
//
//  Created by Ahmed Kamal on 24/04/2024.
//

import SwiftUI

struct LoginView: View {
    
    //MARK: - variable
    @State var phone: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        VStack(spacing: 20) {
            Image("logo") // Replace "logo" with your image name
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(spacing: 5) {
                Text("Welcome back")
                    .bold()
                    .font(.system(size: 24))
                Text("Login now")
            }
            
            // WhatsApp number TextField
            VStack {
                TextField("Enter your WhatsApp number", text: $phone)
                    .onChange(of: phone) { newValue in
                        if newValue.count > 11 {
                            phone = String(newValue.prefix(11))
                        }
                    }
                    .foregroundColor(Color(.placeholderText))
                    .keyboardType(.numberPad)
                    .padding()
                    .background(Color.lightGray)
                    .cornerRadius(8)
            }
            .padding(.bottom, 15) // Add padding to create space between SecureField and Button
            
            Button("Login") {
                // Add login functionality here
            }
            .padding()
            .background(Color(.dark1)) // Set the background color using the color asset
            .foregroundColor(.white) // Set the text color of the button
            .cornerRadius(8) // Add corner radius to the button
        }
        .padding(.horizontal, 50.0)
    }
}

