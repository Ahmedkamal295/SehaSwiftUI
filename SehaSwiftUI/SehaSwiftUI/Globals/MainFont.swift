//
//  MainFont.swift
//  SehaSwiftUI
//
//  Created by Ahmed Kamal on 24/04/2024.
//

import SwiftUI

struct MainFont: ViewModifier {
    var size: CGFloat
    var weight: Font.Weight
    var phone_count: String = "11"
    func body(content: Content) -> some View {
        content
            .font(Font.custom("DM Sans", size: size).weight(weight))
    }
}

extension View {
    func mainFont(size: CGFloat, weight: Font.Weight) -> some View {
        self.modifier(MainFont(size: size, weight: weight))
    }
}
