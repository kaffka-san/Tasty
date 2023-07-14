//
//  OrderView.swift
//  Tasty
//
//  Created by Anastasia Lenina on 11.07.2023.
//

import SwiftUI

struct OrderView: View {
    @State private var orderItems = MockupData.tastyArray
    var body: some View {
        NavigationView {
            VStack{
                List {
                    ForEach(orderItems, id: \.id) { item in
                        TastyListCell(tasty: item)
                    }
                    .onDelete(perform: deleteTasty)

                }
                .listStyle(.plain)
                Button() {

                } label: {
                    TastyButton(text: "$99 - Place order")
                }
                .padding(25)
            }
                .navigationTitle("🧾 Orders")

        }
    }
    func deleteTasty(index: IndexSet) {
        MockupData.tastyArray.remove(atOffsets: index)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
