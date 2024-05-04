//
//  Photo.swift
//  RowshanAlexHW7
//
//  Created by Alex Rowshan on 3/25/24.
//

import Foundation

struct PhotoUrl: Decodable, Equatable, Hashable {
    let raw: String //Represents a base image URL with just the photo path
    let full: String //Represents a photo in jpg format with its maximum dimensions.
    let regular: String //Represents a photo in jpg format with a width of 1080 pixels.
    let small: String //Represents a  photo in jpg format with a width of 400 pixels
    let thumb: String //Represents a photo in jpg format with a width of 200 pixels.
    
}

struct Photo: Decodable, Hashable,Equatable {
    let id: String //store photo’s identifier
    let urls: PhotoUrl

}
