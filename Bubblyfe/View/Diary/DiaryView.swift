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
                            Spacer()
                            
                        }
                            Text(activity.details)
                                .font(.subheadline)
                        }.padding()
                            .padding(.vertical)
                            .background(RoundedRectangle(cornerRadius: 25)
                                            .foregroundColor(activity.cardColor))
                    }.padding(.horizontal)
                    
                }
            }
        }
        
        
//
//        VStack (alignment: .leading, spacing: 10){
//            Text("25 November")
//                .font(.title)
//                .fontWeight(.regular)
//
//            VStack (alignment: .leading, spacing: 10) {
//                HStack {
//                        Image(systemName: "heart.circle.fill")
//                            .font(.largeTitle)
//
//                        Text("Activity 1")
//                            .font(.title)
//                            .fontWeight(.bold)
//
//
//                        Spacer()
//            }
//                Text("Bla bla bla")
//                    .font(.body)
//                    .fontWeight(.regular)
//
//            }
//                .padding()
//                .padding(.vertical)
//                .background(Color("Family"))
//                    .cornerRadius(25)
//
//            VStack (alignment: .leading, spacing: 10){
//                HStack {
//                    Image(systemName: "calendar.circle.fill")
//                        .font(.largeTitle)
//
//                    Text("Activity 2")
//                        .font(.title)
//                        .fontWeight(.bold)
//
//                    Spacer()
//
//                }
//
//                Text("Bla bla bla")
//                    .font(.body)
//                    .fontWeight(.regular)
//            }
//
//                .padding()
//                .padding(.vertical)
//                .background(Color("Freetime"))
//                .cornerRadius(25)
//
//                Text("26 November")
//                .font(.title)
//                .fontWeight(.regular)
//
//            VStack (alignment: .leading, spacing: 10){
//                HStack {
//                    Image(systemName: "person.2.circle.fill")
//                        .font(.largeTitle)
//
//                    Text("Activity 3")
//                        .font(.title)
//                        .fontWeight(.bold)
//
//                    Spacer()
//
//                }
//
//                Text("Bla bla bla")
//                    .font(.body)
//                    .fontWeight(.regular)
//            }
//                .padding()
//                .padding(.vertical)
//                    .background(Color("Friends"))
//                        .cornerRadius(25)
//
//            VStack (alignment: .leading, spacing: 10){
//                HStack {
//                    Image(systemName: "books.vertical.circle.fill")
//                        .font(.largeTitle)
//
//                    Text("Activity 4")
//                        .font(.title)
//                        .fontWeight(.bold)
//
//                    Spacer()
//
//                }
//
//                Text("Bla bla bla")
//                    .font(.body)
//                    .fontWeight(.regular)
//            }
//            .padding()
//            .padding(.vertical)
//            .background(Color("Study"))
//                .cornerRadius(25)
//
//
//            VStack (alignment: .leading, spacing: 10){
//                HStack {
//                    Image(systemName: "star.circle.fill")
//                        .font(.largeTitle)
//
//                    Text("Activity 5")
//                        .font(.title)
//                        .fontWeight(.bold)
//
//                    Spacer()
//
//                }
//
//                Text("Bla bla bla")
//                    .font(.body)
//                    .fontWeight(.regular)
//            }
//            .padding()
//            .padding(.vertical)
//                .background(Color("Extra"))
//                .cornerRadius(25)
//
//
//        }.padding() // END VStack che contiene tutto
        
    }
    
    
}

struct DiaryView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryView().environmentObject(BubblesStore()).environmentObject(ActivityStore())
    }
}
