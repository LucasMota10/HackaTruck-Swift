//
//  teste.swift
//  Mapa
//
//  Created by Student07 on 24/11/23.
//

import SwiftUI
import MapKit

struct City: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct teste: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))

    let annotations = [
        City(name: "London", coordinate: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275)),
        City(name: "Paris", coordinate: CLLocationCoordinate2D(latitude: 48.8567, longitude: 2.3508)),
        City(name: "Rome", coordinate: CLLocationCoordinate2D(latitude: 41.9, longitude: 12.5)),
        City(name: "Washington DC", coordinate: CLLocationCoordinate2D(latitude: 38.895111, longitude: -77.036667))
    ]

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: annotations) {
            MapMarker(coordinate: $0.coordinate)
        }
        .frame(width: 400, height: 300)
    }
}

struct teste_Previews: PreviewProvider {
    static var previews: some View {
        teste()
    }
}
