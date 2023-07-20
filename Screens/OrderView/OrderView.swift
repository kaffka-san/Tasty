//
//  OrderView.swift
//  Tasty
//
//  Created by Anastasia Lenina on 11.07.2023.
//

import SwiftUI

struct OrderView: View {
   // @State private var orderItems = MockupData.tastyArray
    @EnvironmentObject var order: Order
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    List {
                        ForEach(order.items, id: \.id) { item in
                            TastyListCell(tasty: item)
                        }
                        .onDelete(perform: deleteTasty)

                    }
                    .listStyle(.plain)
                    Button() {

                    } label: {
                        //TastyButton(text: "$\(order.price, specifier: "%.2f") - Place order")
                        Text("$\(order.price, specifier: "%.2f") - Place order")

                    }
                    .modifier(StandardButtonStyle())
                    .padding(25)
                }
                .navigationTitle("🧾 Orders")
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.")
                }
            }

        }
    }
    func deleteTasty(index: IndexSet) {
        order.items.remove(atOffsets: index)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
