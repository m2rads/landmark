//
//  LandmarkList.swift
//  Landmarks
//
//  Created by m2rads on 2024-05-16.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, id: \.id) { landmark in
          LandmarkRowView(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
