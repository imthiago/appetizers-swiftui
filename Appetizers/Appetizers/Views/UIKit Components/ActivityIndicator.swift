//
//  ActivityIndicator.swift
//  Appetizers
//
//  Created by Thiago Oliveira on 03/10/22.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = .brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) { }
}

struct LoadindView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            ActivityIndicator()
        }
    }
}
