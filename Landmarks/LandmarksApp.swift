//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by dev on 16.02.2025.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
