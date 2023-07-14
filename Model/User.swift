//
//  User.swift
//  Tasty
//
//  Created by Anastasia Lenina on 13.07.2023.
//

import Foundation
struct User: Codable {
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var birthdate: Date = Date()
    var extraNapkins: Bool = false
    var frequentRefills: Bool = false

}
