//
//  BakeryInfo.swift
//  MyCakeList
//
//  Created by Gia Huy on 12/08/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct BakeryInfo: Identifiable, Codable {
    var id: Int
    var name: String
    var address: String
    var price: String
    var description: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}

