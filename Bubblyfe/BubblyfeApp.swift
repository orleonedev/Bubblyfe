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
    var body: some Scene {
        WindowGroup {
            LaunchscreenView().environmentObject(bubbleStore) // PRIMA SCHERMATA
        }
    }
}
