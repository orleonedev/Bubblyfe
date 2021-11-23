//
//  DiaryView.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 19/11/21.
//

import SwiftUI


struct DiaryView: View {
    @EnvironmentObject var bubbleStore: BubblesStore
    @EnvironmentObject var activitiesStore: ActivityStore
    var body: some View {

        ScrollView{
            LazyVStack{
                ForEach(activitiesStore.activities.filter{ return $0.isCompleted }, id: \.self){ activity in
                    VStack(alignment: .leading, spacing: 8){
                        Text(activity.completitionDate!, style: .date )
                            .font(.headline)
                        
                        Divider()
                        VStack(alignment: .leading, spacing: 8){
                        HStack{
                            Image(systemName: activity.icon)
                                .font(.system(size: 24))
                            Text(activity.title)
                                .font(.title2).fontWeight(.semibold)
                                .lineLimit(1)
                            Spacer()
                            
                        }
                            Text(activity.details)
                                .font(.subheadline)
                                .lineLimit(2)
                        }.padding()
                            .padding(.vertical)
                            .background(RoundedRectangle(cornerRadius: 25)
                                            .foregroundColor(activity.cardColor))
                    }.padding(.horizontal)
                    
                }
            }
        }
        
    }
    
    
}

struct DiaryView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryView().environmentObject(BubblesStore()).environmentObject(ActivityStore())
    }
}
