//
//  Alert.swift
//  Tasty
//
//  Created by Anastasia Lenina on 11.07.2023.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id =  UUID()
    let title: Text
    let messgae: Text
    let dismissButton: Alert.Button
}
struct AlertContext{
    static let invalidDatd = AlertItem(title: Text( "Server Error"),
                                       messgae: Text("The data wecieved from the server was invalid. Please contact support"),
                                       dismissButton: .default(Text("OK")))
    static let invalidResponse = AlertItem(title: Text( "Server Error"),
                                           messgae: Text("Invalid response from the Server. Please try again later or contact support"),
                                           dismissButton: .default(Text("OK")))
    static let invalidURL = AlertItem(title: Text( "Server Error"),
                                      messgae: Text("There was an issue connceting to the server.If this persists, please contact support"),
                                      dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(title: Text( "Server Error"),
                                            messgae: Text("There was an issue connceting to the server.If this persists, please contact support"),
                                            dismissButton: .default(Text("OK")))

}
