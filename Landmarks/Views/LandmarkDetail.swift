//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by m2rads on 2024-05-16.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImageView()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("AccessNotes")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                HStack {
                    Text("A web annotation tool that lives in your pocket:")
                    Spacer()
                    Text("IOS 15")
                }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                Divider()
                
                Text("About AccessNotes")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Easily make highlights and turn them into redescoverable notes")
            }
            .padding()
        }
        Spacer()
    }
}

#Preview {
    LandmarkDetail()
}
