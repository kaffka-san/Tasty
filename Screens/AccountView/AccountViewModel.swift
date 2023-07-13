//
//  AccountViewModel.swift
//  Tasty
//
//  Created by Anastasia Lenina on 13.07.2023.
//

import Foundation

final class AccountViewMode: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var birthdate: Date = Date()
    @Published var extraNapkins: Bool = false
    @Published var frequentRefills: Bool = false
    @Published var alertItem: AlertItem?
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alertItem = AlertContext.emptyForm
            return false

        }
        guard email.isValidEmail else {
           alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
    func saveChanges() {
        guard isValidForm else  {return}
    }
}
