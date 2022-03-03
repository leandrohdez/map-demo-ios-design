//
//  PlacesDomain.swift
//  MapApp
//
//  Created by Leandro Hernandez on 10/2/22.
//

import Foundation

class PlacesDomain {
    
    static let UseCases = PlacesDomain()
 
    //
    func all(completion: @escaping (_ result: PlacesCaseResult) -> Void) {
        let useCase = PlacesUseCase()
        useCase.endHandle = { (resultCase) in
            if let result = resultCase as? PlacesCaseResult {
                completion(result)
            }
        }
        useCase.execute()
    }
    
}
