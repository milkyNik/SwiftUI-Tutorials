//
//  Profile.swift
//  Landmarks
//
//  Created by dev on 19.02.2025.
//

import Foundation

struct Profile {
    var userName: String
    var preferensNotifications = true
    var seasonalPhoto = Seson.winter
    var goalDate = Date()
    
    static let defaultProfile = Profile(userName: "g_kumar")
    
    enum Seson: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
    
}
