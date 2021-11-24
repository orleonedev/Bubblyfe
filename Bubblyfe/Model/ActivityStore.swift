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
    
    var family1active = Activity(title: "Dad Gift", category: "Family" , details: "Christmas gift for Dad", cardColor: Color("Family"),icon: "heart.circle.fill")
    
    var family2active = Activity(title: "Mom Gift", category: "Family" , details: "Christmas gift for Mom", cardColor: Color("Family"),icon: "heart.circle.fill")

    var family1done = Activity(title: "Organize Christmas holidays", category: "Family", details: "Call mom and dad to see what are their plans for christmas holidays", reflections: "Very nice talk, i'm grateful to have them", isCompleted: true ,completitionDate: Date.now.addingTimeInterval(-(1*24*60*60)) , cardColor: Color("Family").opacity(0.3), icon: "heart.circle.fill" )

        var study1active = Activity(title: "Day 16 SwiftUI", category: "Study", details: "Check day 16 of the SwiftUI Challenge", cardColor: Color("Study"), icon: "books.vertical.circle.fill")

    var study1done = Activity(title: "Investigation Phase", category: "Study", details: "Generate new guiding questions and do more researches" , reflections: "too little time to do them", isCompleted: true, completitionDate: Date.now.addingTimeInterval(-7*(1*24*60*60)), cardColor: Color("Study").opacity(0.3), icon: "books.vertical.circle.fill")
    
    var FreeTimedone = Activity(title: "GameSessions", category: "Freetime", details: "See Mike and Mark to talk about gameCon" , reflections: "It was inspiring, really looking forward to the next one", isCompleted: true, completitionDate: Date.now.addingTimeInterval(-(2*24*60*60)), cardColor: Color("Freetime").opacity(0.3), icon: "calendar.circle.fill")
    
    var Extradone = Activity(title: "Learn to do Carbonara", category: "Extra", details: "Search the true recipe" , reflections: "There's no true recipe, everybody can cook how they want and nobody should judge it", isCompleted: true, completitionDate: Date.now.addingTimeInterval(-3*(1*24*60*60)), cardColor: Color("Extra").opacity(0.3), icon: "star.circle.fill")
    
    var friendsActive = Activity(title: "Fabio's Party", category: "Friends", details: "Remember to buy beers", cardColor: Color("Friends"), icon: "person.2.circle.fill")
    
    init() {
        self.activities = [family1active,family2active,study1active,friendsActive,family1done,FreeTimedone,Extradone,study1done]
    }
    
    func addActivity(titl: String, cate: String, det: String, cardCol: Color, ico: String, refl: String = "", compl: Bool = false, dat: Date? ){
        activities.insert(Activity(title: titl, category: cate, details: det, reflections: refl, isCompleted: compl, completitionDate: dat, cardColor: cardCol, icon: ico ), at: 0)
        
    }
}
