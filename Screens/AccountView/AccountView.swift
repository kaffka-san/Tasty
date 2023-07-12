//
//  AccountView.swift
//  Tasty
//
//  Created by Anastasia Lenina on 11.07.2023.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView{
            Text("Tasty list View")
                .navigationTitle("Account View")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
