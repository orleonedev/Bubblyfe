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
//    @Binding var selectedActivity: Activity
    
    var body: some View {
        NavigationView {
            
            VStack (alignment: .leading, spacing: 10) {
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
                
                
            }
            
            
            
        }
        .navigationTitle(activitiesStore.family1active.title).navigationBarTitleDisplayMode(.inline)
//        .navigationBarItems(leading: Button(action: {}) {
//            Text("Activities")
//        })
        
    }
}

struct ActivityDetail_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetail().environmentObject(BubblesStore()).environmentObject(ActivityStore())
    }
}
