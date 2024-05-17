//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by m2rads on 2024-05-16.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })! // computing the input landmark is the same as the one in modelData
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite) // isSet property is binded to the specific landmark passed to detail view
                }
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
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline) // will make it sticky
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: ModelData().landmarks[0])
        .environment(modelData)
    
}
