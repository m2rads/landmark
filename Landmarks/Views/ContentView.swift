//
//  ContentView.swift
//  Landmarks
//
//  Created by m2rads on 2024-05-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
    
}

#Preview {
    ContentView()
        .environment(ModelData())
}
