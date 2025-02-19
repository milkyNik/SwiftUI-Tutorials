//
//  ProfileHost.swift
//  Landmarks
//
//  Created by dev on 19.02.2025.
//

import SwiftUI

struct ProfileHost: View {
    
    @State private var draftProfile = Profile.defaultProfile
    
    var body: some View {
        VStack(alignment: .leading) {
            ProfileSummary(profile: draftProfile)
                .padding()
        }
    }
}

#Preview {
    ProfileHost()
}
