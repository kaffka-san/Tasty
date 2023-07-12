//
//  LoadinfView.swift
//  Tasty
//
//  Created by Anastasia Lenina on 12.07.2023.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            ProgressView().progressViewStyle(.circular)
                .tint(.brandPrimaty)
                .controlSize(.large)

               
        }
    }
}

struct LoadinfView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
