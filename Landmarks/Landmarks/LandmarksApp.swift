//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Kauê Sales on 13/02/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
    
}
