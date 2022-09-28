//
//  PlaceAnnotation.swift
//  MapKitView
//
//  Created by Vincenzo Caruso on 28/09/22.
//

import SwiftUI
import MapKit

struct PlaceAnnotation: Identifiable {
    
    let id = UUID()
    
    var selected: Bool = false
    var name: String
    var location: CLLocationCoordinate2D
    
    init(name: String, location: CLLocationCoordinate2D) {
        self.name = name
        self.location = location
    }
}


