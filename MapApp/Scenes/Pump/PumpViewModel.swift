//
//  PumpViewModel.swift
//  MapApp
//
//  Created by Leandro Hernandez on 3/3/22.
//

import Foundation

class PumpViewModel: ObservableObject {
    
    @Published var station: GasStation

    init(station: GasStation) {
        self.station = station
    }
    
}
