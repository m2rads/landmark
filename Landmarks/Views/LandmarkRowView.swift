//
//  LandmarkRowView.swift
//  Landmarks
//
//  Created by m2rads on 2024-05-15.
//

import SwiftUI

struct LandmarkRowView: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            // this is because inside landmark model we are initating the image as swift ui image
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

// we need a landmark instance during initilization
// This is due to the stored landmark propery at the top
#Preview {
    Group {
        LandmarkRowView(landmark: landmarks[0])
        LandmarkRowView(landmark: landmarks[1])
    }
}
