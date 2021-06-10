//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by saber on 2021/6/2.
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
