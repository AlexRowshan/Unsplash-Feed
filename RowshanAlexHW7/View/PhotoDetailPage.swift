//
//  PhotoDetailPage.swift
//  RowshanAlexHW7
//
//  Created by Alex Rowshan on 3/25/24.
//

import Foundation
import SwiftUI
import Kingfisher

struct PhotoDetailPage: View {
    let photo: Photo
    var body: some View {
        PhotoDetailView(url: photo.urls.regular)
    }
}


