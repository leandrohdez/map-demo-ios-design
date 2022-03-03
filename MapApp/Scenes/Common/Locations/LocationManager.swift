//
//  LocationManager.swift
//  MapApp
//
//  Created by Leandro Hernandez on 2/3/22.
//

import CoreLocation
import CoreLocationUI
import MapKit

class LocationHelper: NSObject, ObservableObject {
    
    static let shared = LocationHelper()
    
    static let defaultLocation = CLLocationCoordinate2D(latitude: 45.8827419, longitude: -1.1932383)
    
    static var currentLocation: CLLocationCoordinate2D {
        guard let location = self.shared.locationManager.location else {
            return LocationHelper.defaultLocation
        }
        return location.coordinate
    }
    
    private let locationManager = CLLocationManager()
    
    private override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}

//
extension LocationHelper: CLLocationManagerDelegate {
    
    //
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
    }
    
    //
    public func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Location manager failed with error: \(error.localizedDescription)")
    }
    
    //
    public func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print("Location manager changed the status: \(status)")
    }
}
