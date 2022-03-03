//
//  MapViewModel.swift
//  MapApp
//
//  Created by Leandro Hernandez on 2/3/22.
//

import Foundation

class MapViewModel: ObservableObject {
    
    @Published var stations: [GasStation]

    init() {
        self.stations = []
    }
    
    //
    func loadPlaces() {
        
        PlacesDomain.UseCases.all { result in
            self.stations = []
            
            switch result {
                
            case .success(let places):
                self.stations = places
                
            case .unknownError:
                print("Error")
            }
        }
    }
    
}
