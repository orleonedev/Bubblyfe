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
                        ForEach(activitiesStore.activities.filter{ return ($0.isCompleted == areCompleted) && ($0.category == whichBubble) }, id: \.self) { activity in
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
                    .sheet(isPresented: $showActivityDetailModal,onDismiss: {
                        bpadded = BpAdded(title: "Bubble Point earned!", descr: "You just earned a Bubble Point for completing that activity!")
                     }
                            , content: {
                        ActivityDetail(showActivityDetailModal: $showActivityDetailModal, selectedActivity: $selectedActivity).environmentObject(activitiesStore)
                    })
                    .sheet(isPresented: $showDiaryActivityModal, content: {
                        DiaryActivity(showDiaryActivityModal: $showDiaryActivityModal, selectedActivity: $selectedActivity).environmentObject(activitiesStore)
                    })
                    .alert(item: $bpadded) {
                        details in
                        Alert(title: Text(details.title),
                              message: Text(details.descr),
                                dismissButton: .default(Text("Ok")))
                    }
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
