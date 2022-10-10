//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Thiago Oliveira on 10/10/22.
//

import SwiftUI

struct AppetizerDetailView: View {
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool

    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)

                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()

                HStack(spacing: 40) {
                    NutritionInfoView(title: "Calories", value: appetizer.calories)
                    NutritionInfoView(title: "Carbs", value: appetizer.carbs)
                    NutritionInfoView(title: "Protein", value: appetizer.protein)
                }
            }

            Spacer()

            Button {
                print("tapped")
            } label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

struct NutritionInfoView: View {
    let title: String
    let value: Int

    var body: some View {
        VStack(spacing: 5) {
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

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.appetizer, isShowingDetail: .constant(true))
    }
}
