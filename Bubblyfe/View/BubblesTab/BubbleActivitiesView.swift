//
//  BubbleActivitiesView.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 22/11/21.
//

import SwiftUI

struct BubbleActivitiesView: View {
    
    @EnvironmentObject var bubbleStore: BubblesStore
    @EnvironmentObject var activitiesStore: ActivityStore
    @State var areCompleted: Bool = false
    @Binding var whichBubble: String
    @State var showActivityDetailModal: Bool = false
    @State var showAddActivityModal: Bool = false

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        
        
            ScrollView {
                Picker("Activity Status", selection: $areCompleted) {
                    Text("Ongoing").tag(false)
                    Text("Completed").tag(true)
                }.pickerStyle(.segmented)
                    .padding()
                
                    LazyVGrid(columns: columns, spacing: 8) {
                        ForEach(activitiesStore.activities.filter{ return ($0.isCompleted == areCompleted) && ($0.category == whichBubble) }, id: \.self) { activity in
                            VStack(alignment: .leading){
                                HStack(alignment: .center, spacing: 8){
                                    Image(systemName: activity.icon)
                                    Text(activity.title)
                                        .font(.headline)
                                        .lineLimit(1)
                                    Spacer()
                                }
                                Text(activity.details)
                                    .font(.subheadline)
                                    .fontWeight(.light)
                                    .lineLimit(2)
                                
                            }.padding()
                                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(activity.cardColor))
                                .onTapGesture {
                                    showActivityDetailModal.toggle()
                                }.sheet(isPresented: $showActivityDetailModal, content: {
                                    ActivityDetail(showActivityDetailModal: $showActivityDetailModal, selectedActivity: activity).environmentObject(activitiesStore)
                                })
                        }
                    }
                    .padding(.horizontal)
                }
            .navigationTitle(whichBubble)
        
            .navigationBarItems( trailing: Button(action: { showAddActivityModal.toggle() }) {
                Image(systemName: "plus")
            }).sheet(isPresented: $showAddActivityModal, content: {
                AddActivitiesView(showAddActivityModal: $showAddActivityModal)
            })
        
    }
}

struct BubbleActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        BubbleActivitiesView(whichBubble: .constant("Family")).environmentObject(ActivityStore()).environmentObject(BubblesStore())
    }
}
