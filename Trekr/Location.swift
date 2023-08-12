//
//  Location.swift
//  Trekr
//
//  Created by Aditya Ghorpade on 24/02/23.
//

import Foundation

struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    static let example = Location(id: 1, name: "Grey Smokey Mountains", country: "United States", description: "A Great place to visit", more: "More text here", latitude: 35.6532, longitude: -83.5070, heroPicture: "smokies", advisory: "Beaware of the bears!")
}

