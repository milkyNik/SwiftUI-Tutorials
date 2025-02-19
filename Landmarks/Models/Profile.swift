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
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let defaultProfile = Profile(userName: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
    
}
