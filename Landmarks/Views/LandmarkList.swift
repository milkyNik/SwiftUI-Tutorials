//
//  LandmarkList.swift
//  Landmarks
//
//  Created by dev on 16.02.2025.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark to see more details...")
        }
    }
}

#Preview {
    LandmarkList()
}
