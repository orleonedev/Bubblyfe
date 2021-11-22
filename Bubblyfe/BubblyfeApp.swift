//
//  BubblyfeApp.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 16/11/21.
//

import SwiftUI

@main
struct BubblyfeApp: App {
    
    @StateObject var bubbleStore = BubblesStore()
    @StateObject var activitiesStore = ActivityStore()
    
    var body: some Scene {
        WindowGroup {
            LaunchscreenView()
                .environmentObject(bubbleStore)
                .environmentObject(activitiesStore)
                .preferredColorScheme(.light)
                .previewInterfaceOrientation(.portrait)// PRIMA SCHERMATA
        }
    }
}
