//
//  ContentView.swift
//  Landmarks
//
//  Created by dev on 16.02.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectionTab: Tab = .featured
    
    enum Tab {
        case featured
        case list
        case test
    }
    
    var body: some View {
        
        TabView(selection: $selectionTab) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            LandmarkList()
                .tabItem({
                    Label("List", systemImage: "list.bullet")
                })
                .tag(Tab.list)
            PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
                .tabItem {
                    Label("Test", systemImage: "star")
                }
                .tag(Tab.test)
        }
        
        
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
