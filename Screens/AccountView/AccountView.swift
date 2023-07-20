//
//  AccountView.swift
//  Tasty
//
//  Created by Anastasia Lenina on 11.07.2023.
//

import SwiftUI

struct AccountView: View {
    @StateObject var accoutViewModel = AccountViewMode()
    @FocusState private var focusedTextField: FormTextField?

    enum FormTextField {
        case firstName, lastName, email
    }
   
    var body: some View {
        NavigationView{
            Form {
                Section {
                    TextField("First Name", text: $accoutViewModel.user.firstName)
                        .focused($focusedTextField, equals: .firstName)
                        .onSubmit {
                            focusedTextField = .lastName
                        }
                        .submitLabel(.next)
                    TextField("Last Name", text: $accoutViewModel.user.lastName)
                        .focused($focusedTextField, equals: .lastName)
                        .onSubmit {
                            focusedTextField = .email
                        }
                        .submitLabel(.next)
                    TextField("Email", text: $accoutViewModel.user.email)
                        .focused($focusedTextField, equals: .email)
                        .onSubmit {
                            focusedTextField = nil
                        }
                        .submitLabel(.continue)
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
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Dismiss") {
                        focusedTextField = nil
                    }
                }
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
