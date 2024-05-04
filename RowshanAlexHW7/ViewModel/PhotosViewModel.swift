//
//  PhotosViewModel.swift
//  RowshanAlexHW7
//
//  Created by Alex Rowshan on 3/25/24.
//

import Foundation

class PhotosViewModel: ObservableObject{
    private let BASE_URL = "https://api.unsplash.com/"
    private let ACCESS_KEY = "OY4SHz8lyn6iiWaRb9fu5oa2O2XBMyAmYhW5vK0fdjc"
    private let PHOTOS_COUNT: Int = 20
    var isLoading = false
    @Published var photos: [Photo] = []
    
    func refresh() async {
        isLoading = true
        
        do {
            let url = URL(string: "\(BASE_URL)/photos/random?count=\(PHOTOS_COUNT)")!
            var urlRequest = URLRequest(url: url)
            urlRequest.setValue("Client-ID \(ACCESS_KEY)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: urlRequest)
            let decoder = JSONDecoder()
            photos = try decoder.decode([Photo].self, from: data)
            
            isLoading = false
        } catch {
            print("Error fetching photos: \(error)")
            isLoading = false
        }
    }
    
    
}
