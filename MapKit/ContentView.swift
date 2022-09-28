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
            Map(coordinateRegion: $appData.region, interactionModes: [.zoom, .pan], annotationItems: appData.annotations) { place in
                //MapMarker(coordinate: place.location, tint: .red)
                MapAnnotation(coordinate: place.location) {
                    VStack{
                        Image(systemName:  "pencil")
                            .resizable()
                            .scaledToFit()
                            .frame(width: place.selected ? 64 : 32, height: place.selected ? 64 : 32)
                            .onTapGesture {
                                for (index, item) in appData.annotations.enumerated() {
                                    if item.id == place.id {
                                        appData.annotations[index].selected.toggle()
                                    } else {
                                        appData.annotations[index].selected = false
                                    }
                                        
                                }
                            }
                        Text("Pencil")
                            .font(.caption)
                    }
                }
            }
            
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
