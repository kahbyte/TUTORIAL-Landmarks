//
//  Profile.swift
//  Landmarks
//
//  Created by Kaue Sousa on 17/04/23.
//

import Foundation
 
struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "kahbyte")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "☀️"
        case autumn = "🌰"
        case winter = "⛄️"
        
        var id: String { rawValue }
    }
}
