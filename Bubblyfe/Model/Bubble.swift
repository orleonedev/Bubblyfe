//
//  Bubble.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 17/11/21.
//

import Foundation
import SwiftUI

class Bubble : Identifiable, ObservableObject{
    
    let id = UUID()
    var category :String
    var cardColor :Color
    var iconColor :Color
    var icon :String
    var bubblePoints :Int
    var isActive: Bool
    
    internal init(category: String, cardColor :Color, iconColor :Color, icon :String, bubblePoints :Int, isActive: Bool) {
        self.category = category
        self.cardColor = cardColor
        self.iconColor = iconColor
        self.icon = icon
        self.bubblePoints = bubblePoints
        self.isActive = isActive
    }
    
}
