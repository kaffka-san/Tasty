//
//  AccountView.swift
//  Tasty
//
//  Created by Anastasia Lenina on 11.07.2023.
//

import SwiftUI

struct AccountView: View {
    @StateObject var accoutViewModel = AccountViewMode()
   
    var body: some View {
        NavigationView{
            Form {
                Section {
                    TextField("First Name", text: $accoutViewModel.firstName)
                    TextField("Last Name", text: $accoutViewModel.lastName)
                    TextField("Emaile", text: $accoutViewModel.email)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                    DatePicker("Birthday", selection: $accoutViewModel.birthdate, displayedComponents: .date)
                    Button ("Save changes") {
                        print("save")
                        accoutViewModel.saveChanges()
                    }
                    .alert(item: $accoutViewModel.alertItem) { alert in
                        Alert(title: alert.title, message: alert.messgae, dismissButton: alert.dismissButton)
                    }

                } header: {
                    Text("Personal Info")
                }
                Section {
                    Toggle("Extra napkins", isOn: $accoutViewModel.extraNapkins)
                    Toggle("Frequent Refills", isOn: $accoutViewModel.frequentRefills)
                }
                header: {
                    Text("Requests")
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimaty))


            }

            .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
