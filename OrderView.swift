//
//  OrderView.swift
//  Tasty
//
//  Created by Anastasia Lenina on 11.07.2023.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView{
            Text("Tasty list View")
                .navigationTitle("Order View")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
