//
//  Place.swift
//  MapApp
//
//  Created by Leandro Hernandez on 2/3/22.
//

import Foundation
import CoreLocation

final class GasStation: Identifiable, Equatable {
    
    let id: UUID
    
    let brand: GasStationBrand
    
    let address: String
    
    let coordinates: CLLocationCoordinate2D
    
    //
    init(brand: GasStationBrand, address: String, coordinates: CLLocationCoordinate2D) {
        self.id = UUID()
        self.brand = brand
        self.address = address
        self.coordinates = coordinates
    }
    
    static func == (lhs: GasStation, rhs: GasStation) -> Bool {
        return lhs.id == rhs.id
    }
}
