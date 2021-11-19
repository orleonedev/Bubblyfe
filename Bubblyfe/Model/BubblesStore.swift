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
        
    var family = Bubble(category: "Family", cardColor: Color.init(red: 194/255, green: 242/255, blue: 255/255, opacity: 100), iconColor: .blue , icon: "heart.circle.fill", bubblePoints: 2, isActive: true)
    
    var study = Bubble(category: "Study", cardColor: Color.init(red: 1, green: 203/255, blue: 165/255, opacity: 100), iconColor: Color.init(red: 255/255, green: 110/255, blue: 4/255), icon: "books.vertical.circle.fill", bubblePoints: 0, isActive: false)
    
    var freeTime = Bubble(category: "Free time", cardColor: Color.init(red: 1, green: 238/255, blue: 165/255, opacity: 100), iconColor: Color.init(red: 255/255, green: 207/255, blue: 0), icon: "calendar.circle.fill", bubblePoints: 0, isActive: false)
    
    var friends = Bubble(category: "Friends", cardColor: Color(hue: 1.0, saturation: 0.805, brightness: 0.998, opacity: 0.752), iconColor: Color(hue: 1.0, saturation: 0.805, brightness: 0.998, opacity: 0.752), icon: "person.2.circle.fill", bubblePoints: 0, isActive: false)
    
    var extra = Bubble(category: "Extra", cardColor: Color.init(red: 100/255, green: 234/255, blue: 0), iconColor: Color.init(red: 100/255, green: 234/255, blue: 0), icon: "star.circle.fill", bubblePoints: 0, isActive: false)
    
    init() {
        self.bubbles = [family, study, freeTime,friends, extra]
    }
    
    func getBubblePoints() -> Int {
        return bubbles.map({$0.bubblePoints}).reduce(0,{ x, y in
            x + y
        })
        
    }
}
