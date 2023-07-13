//
//  XDismissButton.swift
//  Tasty
//
//  Created by Anastasia Lenina on 13.07.2023.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(.white.opacity(0.6))
                .frame(width: 30)
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 50)
                .foregroundColor(.black)

        }
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton()
    }
}
