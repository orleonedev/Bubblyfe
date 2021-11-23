//
//  ActivitiesView.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 20/11/21.
//

import SwiftUI

struct ActivitiesView: View {
    @EnvironmentObject var bubbleStore: BubblesStore
    @EnvironmentObject var activitiesStore: ActivityStore
    @State var areCompleted: Bool = false
    @State var showActivityDetailModal: Bool = false // per passare alla schermata della singola attività
    
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
                ForEach(activitiesStore.activities.filter{ return $0.isCompleted == areCompleted }, id: \.self) { activity in
                    
                    VStack(alignment: .leading){
                        HStack(alignment: .center, spacing: 8){
                            Image(systemName: activity.icon)
                            Text(activity.title)
                                .font(.headline)
                                .lineLimit(1)
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
        }
        .padding(.horizontal)
    }
    
    
}


struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView().environmentObject(ActivityStore()).environmentObject(BubblesStore())
    }
}
