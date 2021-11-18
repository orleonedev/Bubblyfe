//
//  ContainerView.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 16/11/21.
//

import SwiftUI

struct ContainerView: View {
    var body: some View {
        
        TabView {
            BubblesCopyUI().tabItem {
                Image(systemName: "circle.hexagongrid.fill")
                Text("Bubbles")
            }.tag(1)
            
            ChooseBubbleUIView().tabItem {
                Image(systemName: "square.fill.on.square.fill")
                Text("Activities") }.tag(2)
            
            Text("Third").tabItem {
                Image(systemName: "book.closed.fill")
                Text("Diary") }.tag(3)
            
        }
        
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
