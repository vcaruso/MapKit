//
//  ContentView.swift
//  MapKit
//
//  Created by Vincenzo Caruso on 28/09/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @EnvironmentObject var appData: ApplicationData
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $appData.region, interactionModes: [.zoom, .pan])
            
            HStack {
                Text(String(appData.region.center.latitude))
                Text(String(appData.region.center.longitude))
            }.padding(10)
                .font(.caption)
        }
        .ignoresSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ApplicationData())
    }
}
