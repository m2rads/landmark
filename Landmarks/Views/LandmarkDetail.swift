//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by m2rads on 2024-05-16.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            CircleImageView(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                Divider()
                
                Text("About \(landmark.name)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(landmark.description)
            }
            .padding()
        }
        Spacer()
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
