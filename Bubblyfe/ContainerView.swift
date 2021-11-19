//
//  ContainerView.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 16/11/21.
//

import SwiftUI

struct ContainerView: View {
    @EnvironmentObject var bubbleStore: BubblesStore
    var body: some View {
            TabView{
                NavigationView{
                    BubblesView()
                        .navigationTitle("Bubbles")
                        .navigationBarItems( trailing: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "plus")
                        })
                    
                }.tabItem{
                    Image(systemName: "circle.hexagongrid")
                    Text("Bubbles")
                }.tag(1)
                    
                
                Activitiesv2UIView().tabItem{
                    Image(systemName: "square.fill.on.square.fill")
                    Text("Activities")
                }.tag(2)
                
                DiaryView().tabItem{
                    Image(systemName: "book.closed.fill")
                    Text("Diary")
                }.tag(3)
                    
                    .tabViewStyle(.page)
            }
        
//        TabView {
//            BubblesView().tabItem {
//                Image(systemName: "circle.hexagongrid.fill")
//                Text("Bubbles")
//            }.tag(1)
//
//            ChooseBubbleView().tabItem {
//                Image(systemName: "square.fill.on.square.fill")
//                Text("Activities") }.tag(2)
//
//            Text("Third").tabItem {
//                Image(systemName: "book.closed.fill")
//                Text("Diary") }.tag(3)
//
//        }
        
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView().environmentObject(BubblesStore())
    }
}
