//
//  AccountViewModel.swift
//  Tasty
//
//  Created by Anastasia Lenina on 13.07.2023.
//

import Foundation
import SwiftUI

final class AccountViewMode: ObservableObject {
    @AppStorage("user") private var userData : Data?
    @Published var user = User()
    @Published var alertItem: AlertItem?
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.emptyForm
            return false

        }
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
    func saveChanges() {
        guard isValidForm else  {return}

        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    func getUser() {
        guard let userData = userData else {return}
        do {
            user = try JSONDecoder().decode(User.self, from: userData)

        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
}
