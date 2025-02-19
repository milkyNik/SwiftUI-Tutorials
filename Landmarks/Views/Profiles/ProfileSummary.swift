//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by dev on 19.02.2025.
//

import SwiftUI

struct ProfileSummary: View {
    
    @Environment(ModelData.self) var modelData
    
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(profile.userName)
                    .bold()
                    .font(.title)
                
                Text("Notifications: \(profile.preferensNotifications ? "On" : "Off")")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Completed Badges")
                        .font(.headline)
                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day")
                                .hueRotation(.degrees(90))
                            HikeBadge(name: "Tenth Hike")
                                .grayscale(0.5)
                                .hueRotation(.degrees(45))
                        }
                        .padding(.bottom)
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Recent Hikes")
                        .font(.headline)
                    
                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.defaultProfile)
        .environment(ModelData())
}
