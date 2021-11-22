//
//  BubblesStore.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 17/11/21.
//

import Foundation
import SwiftUI

class BubblesStore :ObservableObject {
    @Published var bubbles :[Bubble] = []
    var family = Bubble(category: "Family", cardColor: Color("Family"), iconColor: Color("FamilyIcon") , icon: "heart.circle.fill", bubblePoints: 1, isActive: true)
    
    var study = Bubble(category: "Study", cardColor: Color("Study"), iconColor: Color("StudyIcon"), icon: "books.vertical.circle.fill", bubblePoints: 1, isActive: true)
    
    var freeTime = Bubble(category: "Freetime", cardColor: Color("Freetime"), iconColor: Color("FreetimeIcon"), icon: "calendar.circle.fill", bubblePoints: 0, isActive: true)
    
    var friends = Bubble(category: "Friends", cardColor: Color("Friends"), iconColor: Color("FriendsIcon"), icon: "person.2.circle.fill", bubblePoints: 0, isActive: true)
    
    var extra = Bubble(category: "Extra", cardColor: Color("Extra"), iconColor: Color("ExtraIcon"), icon: "star.circle.fill", bubblePoints: 0, isActive: true)
    
    init() {
        self.bubbles = [family, study, freeTime, friends, extra]
    }
    
    func getBubblePoints() -> Int {
        return bubbles.map({$0.bubblePoints}).reduce(0,{ x, y in
            x + y
        })
        
    }
    
    func getIcon(category :String) -> String {
        
        return (bubbles.filter{ return $0.category == category })[0].icon
    }
 }
