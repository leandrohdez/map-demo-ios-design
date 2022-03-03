//
//  PlacesUseCase.swift
//  MapApp
//
//  Created by Leandro Hernandez on 10/2/22.
//

import Foundation
import CoreLocation

enum PlacesCaseResult {
    case success(places: [GasStation])
    case unknownError
}

class PlacesUseCase: BaseUseCase {
    
    //
    override init() {
        
    }
    
    override func execute() {
        super.execute()
        self.getAllPlaces()
    }
    
}

extension PlacesUseCase {
    
    //
    private func getAllPlaces() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            
            var places = [GasStation]()
            
            places.append(
                GasStation(
                    brand: .shell,
                    address: "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.",
                    coordinates: CLLocationCoordinate2D(latitude: 40.45565087257792, longitude: -3.6887494591839145)
                )
            )
            
            places.append(
                GasStation(
                    brand: .shell,
                    address: "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.",
                    coordinates: CLLocationCoordinate2D(latitude: 40.45565087257792, longitude: -3.6784842666643214)
                )
            )
            
            places.append(
                GasStation(
                    brand: .cepsa,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.42714353119422, longitude: -3.6922231407971675)
                )
            )
            
            places.append(
                GasStation(
                    brand: .cepsa,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.422776804124936, longitude: -3.676343930052594)
                )
            )
            
            places.append(
                GasStation(
                    brand: .cepsa,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.41294702328867, longitude: -3.666487255232264)
                )
            )
            
            places.append(
                GasStation(
                    brand: .repsol,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.413877031254984, longitude: -3.6892898718934473)
                )
            )
            
            places.append(
                GasStation(
                    brand: .repsol,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.41131717576322, longitude: -3.6948928752413677)
                )
            )
            
            places.append(
                GasStation(
                    brand: .bp,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.41940428507567, longitude: -3.696891248972689)
                )
            )
            
            places.append(
                GasStation(
                    brand: .bp,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.4273431272095, longitude: -3.6943579613912445)
                )
            )
            
            places.append(
                GasStation(
                    brand: .bp,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.41198404575553, longitude: -3.711411500753156)
                )
            )
            places.append(
                GasStation(
                    brand: .bp,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.40793976033163, longitude: -3.7154084710550985)
                )
            )
            
            places.append(
                GasStation(
                    brand: .shell,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.41331978147204, longitude: -3.7072226433055975)
                )
            )
            
            places.append(
                GasStation(
                    brand: .shell,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.42522911200569, longitude: -3.7156542117140012)
                )
            )
            
            places.append(
                GasStation(
                    brand: .shell,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.42504365896188, longitude: -3.7002044020952556)
                )
            )
            
            places.append(
                GasStation(
                    brand: .shell,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.40812530742672, longitude: -3.7148725124710564)
                )
            )
            
            places.append(
                GasStation(
                    brand: .cepsa,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.42611963567251, longitude: -3.7004967079589584)
                )
            )
            
            places.append(
                GasStation(
                    brand: .cepsa,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.41369078411156, longitude: -3.705809502390987)
                )
            )
            
            places.append(
                GasStation(
                    brand: .repsol,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.399584349050635, longitude: -3.697190411703305)
                )
            )
            
            places.append(
                GasStation(
                    brand: .repsol,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.40366072745046, longitude: -3.6907780586042946)
                )
            )
            
            places.append(
                GasStation(
                    brand: .repsol,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.40758760530113, longitude: -3.696726506872489)
                )
            )
            
            places.append(
                GasStation(
                    brand: .bp,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.41448258176877, longitude: -3.689585392740907)
                )
            )
            
            places.append(
                GasStation(
                    brand: .bp,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.410507522745824, longitude: -3.7096167830845586)
                )
            )
            
            places.append(
                GasStation(
                    brand: .bp,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.41669865823614, longitude: -3.7104103148632626)
                )
            )
            
            places.append(
                GasStation(
                    brand: .bp,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.431295926703214, longitude: -3.7117335118870196)
                )
            )
            
            places.append(
                GasStation(
                    brand: .shell,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.428426440474276, longitude: -3.6979132695874446)
                )
            )
            
            places.append(
                GasStation(
                    brand: .shell,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.41272212368505, longitude: -3.702014382602792)
                )
            )
            
            places.append(
                GasStation(
                    brand: .shell,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.41966839195046, longitude: -3.7110715952813393)
                )
            )
            
            places.append(
                GasStation(
                    brand: .shell,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.42429912165477, longitude: -3.713782775433321)
                )
            )
            
            places.append(
                GasStation(
                    brand: .cepsa,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.42404755222912, longitude: -3.7109395915504284)
                )
            )
            
            places.append(
                GasStation(
                    brand: .repsol,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.426765551164465, longitude: -3.714179755807804)
                )
            )
            
            places.append(
                GasStation(
                    brand: .repsol,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.424902727167144, longitude: -3.6956656948696778)
                )
            )
            
            places.append(
                GasStation(
                    brand: .shell,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.4235945495287, longitude: -3.7049888209791977)
                )
            )
            
            places.append(
                GasStation(
                    brand: .shell,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.40048945828872, longitude: -3.689985625434012)
                )
            )
            
            places.append(
                GasStation(
                    brand: .shell,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.405272230796236, longitude: -3.6970573776566398)
                )
            )
            
            places.append(
                GasStation(
                    brand: .shell,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.40516736982604, longitude: -3.675309312912207)
                )
            )
            
            places.append(
                GasStation(
                    brand: .bp,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.422884318743684, longitude: -3.670539745181152)
                )
            )
            
            places.append(
                GasStation(
                    brand: .bp,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.41121048247263, longitude: -3.727664182829174)
                )
            )
            
            places.append(
                GasStation(
                    brand: .bp,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.407434315353804, longitude: -3.7328193323087198)
                )
            )
            
            places.append(
                GasStation(
                    brand: .bp,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.3970170900793, longitude: -3.7192661136153196)
                )
            )
            
            places.append(
                GasStation(
                    brand: .shell,
                    address: "Street name description about gas station address",
                    coordinates: CLLocationCoordinate2D(latitude: 40.39560768488719, longitude: -3.7191337070773054)
                )
            )
            
            self.finish(caseResult: PlacesCaseResult.success(places: places))
        }
    }
    
}
