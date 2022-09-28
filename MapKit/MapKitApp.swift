//
//  MapKitApp.swift
//  MapKit
//
//  Created by Vincenzo Caruso on 28/09/22.
//

import SwiftUI

@main
struct MapKitApp: App {
    
    var appData = ApplicationData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(appData)
        }
    }
}
