//
//  ActivityStore.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 18/11/21.
//

import Foundation
import SwiftUI

class ActivityStore: ObservableObject {
    
    @Published var activities: [Activity] = []
    
    var family1active = Activity(title: "family1Act", category: "Family", details: "Lorem ipse e m so rott o cazz", colorCard: Color("Family") )
    
    init() {
        self.activities = [family1active]
    }
}
