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
    
    var family1active = Activity(title: "family1", category: "Family" , details: "Lorem ipse e m so rott o cazz", cardColor: Color("Family"),icon: "heart.circle.fill")

    var family1done = Activity(title: "Organize Christmas holidays", category: "Family", details: "Call mom and dad to see what are their plans for christmas holidays", reflections: "Very nice talk, i'm grateful to have them", isCompleted: true ,completitionDate: Date.now , cardColor: Color("Family").opacity(0.3), icon: "heart.circle.fill" )

        var study1active = Activity(title: "Study1", category: "Study", details: "Lorem ipse e m so rott o cazz", cardColor: Color("Study"), icon: "books.vertical.circle.fill")

    var study1done = Activity(title: "Investigation Phase", category: "Study", details: "Generate new guiding questions and do more researches" , reflections: "too little time to do them", isCompleted: true, completitionDate: Date.now, cardColor: Color("Study").opacity(0.3), icon: "books.vertical.circle.fill")
    
    var FreeTimedone = Activity(title: "GameSessions", category: "Freetime", details: "See Mike and Mark to talk about gameCon" , reflections: "", isCompleted: true, completitionDate: Date.now, cardColor: Color("Freetime").opacity(0.3), icon: "calendar.circle.fill")
    
    var Extradone = Activity(title: "Learn to do Carbonara", category: "Extra", details: "Search the true recipe" , reflections: "Lorem rott o cazz di nuovo jfoeuhfeqoufgqoufguq", isCompleted: true, completitionDate: Date.now, cardColor: Color("Extra").opacity(0.3), icon: "star.circle.fill")
    
    init() {
        self.activities = [family1active,family1done,study1done,study1active,FreeTimedone,Extradone]
    }
    
    func addActivity(titl: String, cate: String, det: String, cardCol: Color, ico: String ){
        activities.append(Activity(title: titl, category: cate, details: det, cardColor: cardCol, icon: ico))
    }
}
