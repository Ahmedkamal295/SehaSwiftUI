//
//  SehaSwiftUIApp.swift
//  SehaSwiftUI
//
//  Created by Ahmed Kamal on 24/04/2024.
//

import SwiftUI
import IQKeyboardManagerSwift
@main
struct SehaSwiftUIApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
