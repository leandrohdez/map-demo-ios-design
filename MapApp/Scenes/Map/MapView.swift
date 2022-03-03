//
//  MapView.swift
//  MapApp
//
//  Created by Leandro Hernandez on 2/3/22.
//

import SwiftUI
import MapKit
import CoreLocation
import CoreLocationUI

struct MapView: View {
    
    @StateObject private var viewModel: MapViewModel
    
    @State private var showModal = false
    
    @State private var selectedIndex: Int?
    
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.42317459, longitude: -3.700166141),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    init(viewModel: MapViewModel = .init()) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        
        ZStack {
            
            Map(coordinateRegion: self.$region, showsUserLocation: true, annotationItems: self.viewModel.stations, annotationContent: { station in
                
                MapAnnotation(coordinate: station.coordinates) {
                    MapAnnotationView()
                        .onTapGesture {
                            guard let index = self.viewModel.stations.firstIndex(where: { $0 == station }) else { return }
                            self.selected(index: index)
                        }
                }
            })
            .edgesIgnoringSafeArea(.all)
        }
        .overlay {
            SearchBarView()
            LocationButtonView()
        }
        .stepsModal(showModal: self.$showModal) {
            if let index = self.selectedIndex, self.viewModel.stations.count > index {
                let station = self.viewModel.stations[index]
                NavigationView{
                    StationView(viewModel: StationViewModel(station: station))
                }
            }
        }
        .navigationBarHidden(true)
        .onAppear {
//            let location = LocationHelper.currentLocation
            self.viewModel.loadPlaces()
        }
    }
}

// MARK: - Actions
fileprivate extension MapView {
    
    //
    private func selected(index: Int) {
        self.selectedIndex = index
        self.showModal = true
    }
}
