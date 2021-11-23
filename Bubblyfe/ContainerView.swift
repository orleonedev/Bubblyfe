//
//  ContainerView.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 16/11/21.
//

import SwiftUI

struct ContainerView: View {
    @EnvironmentObject var bubbleStore: BubblesStore
    @EnvironmentObject var activitiesStore: ActivityStore
    @State var showAddActivityModal: Bool = false
    @State var showAddBubbleModal: Bool = false
    @State var showActivityDetailModal: Bool = false

    var body: some View {
            TabView{
                NavigationView{
                    BubblesView()
                        .navigationTitle("Bubbles")
                        
                        .toolbar{
                            ToolbarItem(placement: .navigationBarTrailing){
                                    Button(action: {
                                        showAddBubbleModal.toggle()
                                    }, label: {
                                        Text("Edit")
                                    }).sheet(isPresented: $showAddBubbleModal, content: {
                                        AddBubblesView(showAddBubbleModal: $showAddBubbleModal)
                                    })
                            }
                        }
                    
                }.tabItem{
                    Image(systemName: "circle.hexagongrid")
                    Text("Bubbles")
                }.tag(1)
                    
                NavigationView{
                    ActivitiesView()
                        .navigationTitle("Activities")
                        .navigationBarItems( trailing: Button(action: { showAddActivityModal.toggle() }) {
                            Image(systemName: "plus")
                        }).sheet(isPresented: $showAddActivityModal, content: {
                            AddActivitiesView(showAddActivityModal: $showAddActivityModal)
                        })
                }.tabItem{
                    Image(systemName: "square.fill.on.square.fill")
                    Text("Activities")
                }.tag(2)
                
                NavigationView{
                    DiaryView()
                        .navigationTitle("Diary")
                }
                .tabItem{
                    Image(systemName: "book.closed.fill")
                    Text("Diary")
                }.tag(3)
                    .tabViewStyle(.page)
            }
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView().environmentObject(BubblesStore()).environmentObject(ActivityStore())
    }
}
