//
//  ProfileHost.swift
//  Landmarks
//
//  Created by dev on 19.02.2025.
//

import SwiftUI

struct ProfileHost: View {
    
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    
    @State private var draftProfile = Profile.defaultProfile
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                Text("Edit Profile")
            }
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
