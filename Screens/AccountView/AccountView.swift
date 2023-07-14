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
                    TextField("First Name", text: $accoutViewModel.user.firstName)
                    TextField("Last Name", text: $accoutViewModel.user.lastName)
                    TextField("Emaile", text: $accoutViewModel.user.email)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                    DatePicker("Birthday", selection: $accoutViewModel.user.birthdate, displayedComponents: .date)
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
                    Toggle("Extra napkins", isOn: $accoutViewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $accoutViewModel.user.frequentRefills)
                }
                header: {
                    Text("Requests")
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimaty))


            }
            .onAppear {
                accoutViewModel.getUser()
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
