//
//  AppDelegate.swift
//  SehaSwiftUI
//
//  Created by Ahmed Kamal on 24/04/2024.
//

import UIKit

import UIKit
import IQKeyboardManagerSwift

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Setup IQKeyboardManager
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.resignOnTouchOutside = true
        return true
    }
}
