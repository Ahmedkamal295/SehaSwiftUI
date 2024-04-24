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
    @State var showAlert = false
    @State var error_message: String = ""
//    @Binding var x: CGFloat
    
    var body: some View {

        VStack(spacing: 20) {
            Image("phone")
                .frame(width: UIScreen.main.bounds.width * 0.2)
//                .onTapGesture {
//                    x = 0
//                }
            
            Image("logo") // Replace "logo" with your image name
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(spacing: 5) {
                Text("Welcome back")
                    .bold()
                    .font(.system(size: 24))
                Text("Login now")
            }
            
            // WhatsApp number TextField with icon
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(Color(.lightGray))
                    .frame(height: 60) // Adjust the height of the background
                    .overlay(
                        HStack {
                            Image("phone")  // Icon
                                .foregroundColor(.gray)
                                .padding(.leading, 10)
                            TextField("Enter your WhatsApp number", text: $phone)
                                .onChange(of: phone) { newValue in
                                    if newValue.count > 11 {
                                        phone = String(newValue.prefix(11))
                                    }
                                }
                                .foregroundColor(.black) // Set text color to black
                                .keyboardType(.numberPad)
                                .padding()
                        }
                    )
            }
            .padding(.bottom, 10) // Add padding to create space between SecureField and Button
            
            // Login Button
            Button("Login") {
                if phone.isEmpty {
                    print("Phone number is empty")
                    error_message = "Please enter your phone number"
                    showAlert = true
                  
                } else if phone.count < 11 {
                    print("Phone number is empty")
                    error_message = "The phone number is incorrect"
                    showAlert = true
                } else {
                    print("done login go from verify phone")
                }
                // Add login functionality here
            }
            .foregroundColor(.white)
            .padding(.horizontal, 20)
            .padding(.vertical, 16)
            .frame(width: UIScreen.main.bounds.width - 30, alignment: .center)
            .background(Color.dark1)
            .cornerRadius(10)
            
            .alert(isPresented: $showAlert) {
                Alert(title: Text("ِError"), message: Text(error_message), dismissButton: .default(Text("OK")))
            }
        }
        .padding(.horizontal, 20.0)
        
      
    }
}
