//
//  PhotoGridPage.swift
//  RowshanAlexHW7
//
//  Created by Alex Rowshan on 3/25/24.
//

import Foundation
import SwiftUI
import Kingfisher

struct PhotoGridPage: View {
    @StateObject var photosViewModel = PhotosViewModel()
    @State var viewDidLoad = false
    let items: [GridItem] = [GridItem(.flexible(minimum: 120)), GridItem(.flexible(minimum: 120))]
    var body: some View {
            NavigationView {
                ScrollView(.vertical, showsIndicators: false) {
                    if photosViewModel.isLoading {
                        ProgressView()
                    } else {
                        LazyVGrid(columns: items, spacing: 10) {
                            ForEach(photosViewModel.photos, id: \.self) { photo in
                                PhotoCell(photo: photo)
                            }
                        }
                        .padding()
                    }
                }
                .navigationTitle("Unsplash Feed")
                .toolbar {
                    Button(action: {
                        Task {
                            await photosViewModel.refresh()
                        }
                    }) {
                        Image(systemName: "arrow.clockwise")
                    }
                }
            }
            .task {
                if !viewDidLoad {
                    await photosViewModel.refresh()
                    viewDidLoad = true
                }
            }
        }
}

#Preview {
    PhotoGridPage()
}

