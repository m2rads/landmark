//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by m2rads on 2024-05-11.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData() // this state is only inititialized once during the life time of an application
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
