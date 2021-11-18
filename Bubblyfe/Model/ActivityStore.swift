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
    
    var family1done = Activity(title: "family1Act", category: "Family", details: "Lorem ipse e m so rott o cazz", reflections: "Lorem rott o cazz di nuovo", isCompleted: true ,completitionDate: Date.now , colorCard: Color("Family") )
    
    var study1active = Activity(title: "Study1Act", category: "Study", details: "Lorem ipse e m so rott o cazz", colorCard: Color("Study"))
    
    var study1done = Activity(title: "StudyDone", category: "Study", details: "Lorem ipse e m so rott o cazz" , reflections: "Lorem rott o cazz di nuovo", isCompleted: true, completitionDate: Date.now, colorCard: Color("Study"))
    
    
    
    init() {
        self.activities = [family1active, family1done, study1active, study1done]
    }
}
