//
//  TastyButton.swift
//  Tasty
//
//  Created by Anastasia Lenina on 13.07.2023.
//

import SwiftUI

struct TastyButton: View {
    var text: LocalizedStringKey
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .font(.title3)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimaty)
            .cornerRadius(10)
    }
}

struct TastyButton_Previews: PreviewProvider {
    static var previews: some View {
        TastyButton(text: "test")
    }
}
