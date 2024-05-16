//
//  CircleImageView.swift
//  Landmarks
//
//  Created by m2rads on 2024-05-11.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
                    .shadow(radius: 7)
            }
    }
}

#Preview {
    CircleImageView()
}