//
//  CategoryHome.swift
//  Landmarks
//
//  Created by dev on 19.02.2025.
//

import SwiftUI

struct CategoryHome: View {
    
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    if let items = modelData.categories[key] {
                        CategoryRow(categoryName: key, items: items)
                    }
                }
                .listRowInsets(EdgeInsets(top: 0,
                                          leading: 10,
                                          bottom: 0,
                                          trailing: 10))
            }
                .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark!")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
