//
//  PhotoNavContainer.swift
//  RowshanAlexHW7
//
//  Created by Alex Rowshan on 3/25/24.
//

import Foundation
import SwiftUI
import Kingfisher

struct PhotoNavContainer: View {
    var body: some View {
            NavigationStack {
                PhotoGridPage()
                    .navigationDestination(for: Photo.self) { photo in
                        PhotoDetailPage(photo: photo)
                    }
            }
        }}

#Preview {
    PhotoNavContainer()
}
