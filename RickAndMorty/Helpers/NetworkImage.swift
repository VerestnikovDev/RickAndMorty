//
//  NetworkImage.swift
//  RickAndMorty
//
//  Created by a.verestnikov on 30.03.2021.
//

import SwiftUI

struct NetworkImage: View {

    let url: String?
    var realUrl: URL? {
        guard let url = url else { return nil }
        return URL(string: url)
    }

    var body: some View {
        Group {
            if let url = realUrl,
                let imageData = try? Data(contentsOf: url),
                let uiImage = UIImage(data: imageData) {
                Image(uiImage: uiImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8)
            }
            else {
                Image("rick")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8)
            }
        }
    }

}
