//
//  TastyDetailView.swift
//  Tasty
//
//  Created by Anastasia Lenina on 12.07.2023.
//

import SwiftUI

struct TastyDetailView: View {
    let tasty: TastyModel
    @Binding var isShowingDetail: Bool
    var body: some View {
        VStack {
            TastyRemoteImage(urlString: tasty.imageURL)
            .scaledToFit()
            .frame(width: 300, height: 225)

            VStack{
                Text(tasty.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(tasty.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories", value: tasty.calories)
                    NutritionInfo(title: "Carbs", value: tasty.carbs)
                    NutritionInfo(title: "Protein", value: tasty.protein)
                }
            }
            Spacer()
            Button{

            } label: {
                TastyButton(text: "\(tasty.price, format: .currency(code: ("USD"))) - Add to Order")  
            }
            .padding(.bottom,30)

        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(20)
        .shadow(radius: 40)
        .overlay(
            Button() {
                isShowingDetail = false

            } label: {
               XDismissButton()
                .padding(.top, 10)
            },
            alignment: .topTrailing
        )
    }
}

struct TastyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TastyDetailView(tasty: MockupData.sampleTasty, isShowingDetail: .constant(true))
    }
}
struct NutritionInfo : View {
    let title: String
    let value: Int
    var body: some View {
        VStack {
            Text(title)
                .bold()
                .font(.caption)
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()

        }
    }

}
