//
//  ApplicationData.swift
//  MapKit
//
//  Created by Vincenzo Caruso on 28/09/22.
//

import SwiftUI
import MapKit


/// Model
class ApplicationData: ObservableObject {
    
    @Published var region: MKCoordinateRegion
    @Published var annotations: [PlaceAnnotation] = []
    
    init() {
        let coordinates = CLLocationCoordinate2D(latitude: 40.7637825011971, longitude: -73.9731328627541)
        region = MKCoordinateRegion(center: coordinates, latitudinalMeters: 1000 , longitudinalMeters: 1000)
        
        let location = CLLocationCoordinate2D(latitude: 40.7637825011971, longitude: -73.97331318627541)
        
        annotations.append(PlaceAnnotation(name: "Apple Store", location: location))
        
    }
}
