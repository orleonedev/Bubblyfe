//
//  Activity.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 18/11/21.
//

import Foundation
import SwiftUI

struct Activity: Identifiable, Hashable{
    
    let id = UUID()
    var title: String
    var category: String
    var details: String
    var reflections: String? = nil
//    var image: Image? = nil
    var isCompleted: Bool = false
    var completitionDate: Date? = nil
    var cardColor: Color
    
}
