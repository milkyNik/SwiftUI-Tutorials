//
//  CategoryHome.swift
//  Landmarks
//
//  Created by dev on 19.02.2025.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Text("Hello, World!")
                .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark!")
        }
    }
}

#Preview {
    CategoryHome()
}
