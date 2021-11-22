//
//  ActivityStore.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 18/11/21.
//

import Foundation
import SwiftUI


class ActivityStore: ObservableObject {
    
    @Published var activities: [Activity]
    
    var family1active = Activity(title: "family1", category: "Family" , details: "Lorem ipse e m so rott o cazz", cardColor: Color("Family"))

    var family1done = Activity(title: "family2", category: "Family", details: "Lorem ipse e m so rott o cazz", reflections: "Lorem rott o cazz di nuovo", isCompleted: true ,completitionDate: Date.now , cardColor: Color("Family").opacity(0.3) )

        var study1active = Activity(title: "Study1", category: "Study", details: "Lorem ipse e m so rott o cazz", cardColor: Color("Study"))

    var study1done = Activity(title: "StudyDone", category: "Study", details: "Lorem ipse e m so rott o cazz" , reflections: "Lorem rott o cazz di nuovo", isCompleted: true, completitionDate: Date.now, cardColor: Color("Study").opacity(0.3))
    
    init() {
        self.activities = [family1active,family1done,study1done,study1active]
    }
}
