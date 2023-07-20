//
//  CustomModifiers.swift
//  Tasty
//
//  Created by Anastasia Lenina on 20.07.2023.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(Color.brandPrimaty)
            .controlSize(.large)
    }
}
//extension View {
//    func standartButtonStyle() -> some View {
//        return modifier(standartButtonStyle())
//    }
//}
