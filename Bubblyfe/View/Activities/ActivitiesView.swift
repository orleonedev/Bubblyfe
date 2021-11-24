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
                   onDismiss: {
               bpadded = BpAdded(title: "Bubble Point earned!", descr: "You just earned a Bubble Point for completing that activity!")
            }
                   ,content: {
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
        
        
    }
    
//    func showAlertButtonTapped(_ sender: UIButton) {
//
//            // create the alert
//            let alert = UIAlertController(title: "My Title", message: "This is my message.", preferredStyle: UIAlertController.Style.alert)
//
//            // add an action (button)
//            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//
//            // show the alert
//
//            self.present(alert, animated: true)
//    }
    
    
}


struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView().environmentObject(ActivityStore()).environmentObject(BubblesStore())
    }
}
