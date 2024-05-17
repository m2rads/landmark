//
//  MapView.swift
//  Landmarks
//
//  Created by m2rads on 2024-05-11.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region))) // this is a bidrectional connection value -> needs more learning here 
    }
    
    // computed variable
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate, // mapkit recalculates the coordinates when the view changes
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
