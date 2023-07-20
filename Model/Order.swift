//
//  Order.swift
//  Tasty
//
//  Created by Anastasia Lenina on 18.07.2023.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [TastyModel] = []

    func add(_ tastyModel: TastyModel) {
        items.append(tastyModel)
    }

    func remove(_ indexes: IndexSet) {
        items.remove(atOffsets: indexes)
    }
    var price: Double {
        items.reduce(0) {$0 + $1.price}
    }
}
