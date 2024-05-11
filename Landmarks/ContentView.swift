//
//  ContentView.swift
//  Landmarks
//
//  Created by m2rads on 2024-05-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("AccessNotes")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            HStack {
                Text("AccessNotes:")
                    .font(.subheadline)
                Spacer()
                Text("is a fun way to access your annotations")
                    .font(.subheadline)
            }
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
