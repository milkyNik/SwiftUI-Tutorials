//
//  LandmarkList.swift
//  Landmarks
//
//  Created by dev on 16.02.2025.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        return landmarks.filter { !showFavoritesOnly || $0.isFavorite }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark to see more details...")
        }
    }
}

#Preview {
    LandmarkList()
}
