//
//  ActivitiesView.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 20/11/21.
//

import SwiftUI

struct BpAdded : Identifiable {
    var id: String{title}
    var title: String
    var descr: String
    
}

struct ActivitiesView: View {
    
    @EnvironmentObject var bubbleStore: BubblesStore
    @EnvironmentObject var activitiesStore: ActivityStore
    @State var areCompleted: Bool = false
    @State var showActivityDetailModal: Bool = false // per passare alla schermata della singola attività
    @State var showDiaryActivityModal: Bool = false
    @State var selectedActivity: Activity = Activity(title: "", category: "", details: "", cardColor: Color.gray, icon: "questionmark.circle.fill")
    @State var bpadded: BpAdded?
    
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
                ForEach(activitiesStore.activities.filter{ return $0.isCompleted == areCompleted }) { activity in
                    
                    VStack(alignment: .leading,spacing: 8){
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
                            .lineLimit(1)
                        
                    }.padding()
                        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(activity.cardColor))
                    
                        .onTapGesture {
                            print("List: \(activity)")
                            selectedActivity = activity
                            if !selectedActivity.isCompleted{
                                showActivityDetailModal.toggle()
                            }else{
                                showDiaryActivityModal.toggle()
                            }
                            
                        }
                        
                }
            }
            .padding(.horizontal)
            .sheet(isPresented: $showActivityDetailModal,
                   content: {
                ActivityDetail(showActivityDetailModal: $showActivityDetailModal, selectedActivity: $selectedActivity, bpadded: $bpadded).environmentObject(activitiesStore)
            })
            .sheet(isPresented: $showDiaryActivityModal, content: {
                DiaryActivity(showDiaryActivityModal: $showDiaryActivityModal, selectedActivity: $selectedActivity).environmentObject(activitiesStore)
            })
//
        }
        
        
    }
    
}


struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView().environmentObject(ActivityStore()).environmentObject(BubblesStore())
    }
}
