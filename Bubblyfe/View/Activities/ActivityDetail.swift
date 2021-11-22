//
//  ActivityDetail.swift
//  Bubblyfe
//
//  Created by Simona Ettari on 22/11/21.
//

import SwiftUI

struct ActivityDetail: View {
    @EnvironmentObject var bubbleStore: BubblesStore
    @EnvironmentObject var activitiesStore: ActivityStore
    @Binding var showActivityDetailModal: Bool
//    @Binding var selectedActivity: Activity
    
    var body: some View {
        
        NavigationView {
            VStack (spacing: 10) {
                HStack {
                    Image(activitiesStore.family1active.icon)
                        .font(.largeTitle)
                    
                    Text(activitiesStore.family1active.category)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    
                    Spacer()
                }
                .padding()
                .padding(.vertical)
                .background(Color(activitiesStore.family1active.category))
                .cornerRadius(25)
                
                HStack {
                    Text(activitiesStore.family1active.title)
                    Spacer()
                }
                .padding()
                .padding(.vertical)
                .background(Color(activitiesStore.family1active.category))
                .cornerRadius(25)
                
                HStack {
                    Text(activitiesStore.family1active.details)
                    Spacer()
                }
                .padding()
                .padding(.vertical)
                .background(Color(activitiesStore.family1active.category))
                .cornerRadius(25)
                
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Mark as done")
                        .padding(.horizontal, 128)
                        .padding(.vertical)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 12, style: .continuous))
               }
                
            }
                .navigationTitle(activitiesStore.family1active.title)
                .navigationBarItems(leading: Button(action: {showActivityDetailModal.toggle()}) {
                   Text("Activities")
                  })
                
            

            
            
        }
        
        
    }
}

struct ActivityDetail_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetail(showActivityDetailModal: .constant(true)).environmentObject(BubblesStore()).environmentObject(ActivityStore())
    }
}
