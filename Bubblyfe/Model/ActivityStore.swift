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

    var family1done = Activity(title: "Family2", category: "Family", details: "Lorem ipse e m so rott o cazz", reflections: "Lorem rott o cazz di nuovo", isCompleted: true ,completitionDate: Date.now , cardColor: Color("Family").opacity(0.3), icon: "heart.circle.fill" )

        var study1active = Activity(title: "Study1", category: "Study", details: "Lorem ipse e m so rott o cazz", cardColor: Color("Study"), icon: "books.vertical.circle.fill")

    var study1done = Activity(title: "StudyDone", category: "Study", details: "Lorem ipse e m so rott o cazz" , reflections: "Lorem rott o cazz di nuovo", isCompleted: true, completitionDate: Date.now, cardColor: Color("Study").opacity(0.3), icon: "books.vertical.circle.fill")
    
    var FreeTimedone = Activity(title: "FreeTimeDone", category: "Freetime", details: "Lorem ipse e m so rott o cazzzzzzzzzzzzz" , reflections: "Lorem rott o cazz di nuovo aaaaaaaaa aaaaaaaaaa", isCompleted: true, completitionDate: Date.now, cardColor: Color("Freetime").opacity(0.3), icon: "calendar.circle.fill")
    
    var Extradone = Activity(title: "ExtraDone", category: "Extra", details: "Lorem ipse e m so rott o cazz olaidhoadhfohouhouh" , reflections: "Lorem rott o cazz di nuovo jfoeuhfeqoufgqoufguq", isCompleted: true, completitionDate: Date.now, cardColor: Color("Extra").opacity(0.3), icon: "star.circle.fill")
    
    init() {
        self.activities = [family1active,family1done,study1done,study1active,FreeTimedone,Extradone]
    }
    
    func addActivity(titl: String, cate: String, det: String, cardCol: Color, ico: String ){
        activities.append(Activity(title: titl, category: cate, details: det, cardColor: cardCol, icon: ico))
    }
}
