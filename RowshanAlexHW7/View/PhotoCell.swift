//
//  PhotoCell.swift
//  RowshanAlexHW7
//
//  Created by Alex Rowshan on 3/25/24.
//

import Foundation
import SwiftUI
import Kingfisher

struct PhotoCell: View {
    let photo: Photo
    
    var body: some View {
        NavigationLink(value: photo) {
            KFImage(URL(string: photo.urls.regular))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 160)
                .clipped()
        }
    }
}

#Preview {
    PhotoCell(photo: Photo(id: "1", urls: PhotoUrl(raw: "", full: "", regular: "", small: "", thumb: "")))
}
