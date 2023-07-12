//
//  TastyListCell.swift
//  Tasty
//
//  Created by Anastasia Lenina on 11.07.2023.
//

import SwiftUI

struct TastyListCell: View {
    let tasty: TastyModel
    var body: some View {
        HStack(spacing: 15) {
            TastyRemoteImage(urlString: tasty.imageURL)
                    .scaledToFit()
                    .frame(width: 120, height: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 20))

            VStack(alignment: .leading, spacing: 5) {
                Text(tasty.name)
                    .font(.headline)
                Text(tasty.price.formatted(.currency(code: "USD")))
                    .foregroundColor(.secondary)
                    .fontWeight(.bold)
            }
        }
    }
}

struct TastyListCell_Previews: PreviewProvider {
    static var previews: some View {
        TastyListCell(tasty: MockupData.sampleTasty)
    }
}
