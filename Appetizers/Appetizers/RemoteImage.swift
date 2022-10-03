//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Thiago Oliveira on 03/10/22.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image: Image? = nil

    func loadFrom(url string: String) {
        NetworkManager.shared.downloadImage(from: string) { image in
            guard let image = image else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: image)
            }
        }
    }
}

struct RemoteImage: View {
    var image: Image?

    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

struct AppetizerRemoteImage: View {
    @StateObject var imageLoader = ImageLoader()
    let urlString: String

    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear {
                imageLoader.loadFrom(url: urlString)
            }
    }
}
