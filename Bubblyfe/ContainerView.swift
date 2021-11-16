//
//  ContainerView.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 16/11/21.
//

import SwiftUI

struct ContainerView: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            BubblesUIView().tabItem {
                Image(systemName: "circle.hexagonpath.fill")
                Text("Bubbles")
            }.tag(1)
            
            Text("Second").tabItem {
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
