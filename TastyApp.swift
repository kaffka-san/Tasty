//
//  TastyApp.swift
//  Tasty
//
//  Created by Anastasia Lenina on 11.07.2023.
//

import SwiftUI

@main
struct TastyApp: App {
    var order = Order()
    var body: some Scene {
        WindowGroup {
            TastyTabView()
                .environmentObject(order)
        }
    }
}
