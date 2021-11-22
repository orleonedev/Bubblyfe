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
    @State var areCompleted: Bool = false
    
    var body: some View {
//        VStack (alignment: .leading){
//
//            Text("25 November")
//                .font(.title)
//                .fontWeight(.regular)
//            Spacer()
//            VStack(alignment: .leading){
//                HStack(alignment: .center, spacing: 8){
//                    Image(systemName: "star.fill")
//                    Text("Activities 1")
//                        .font(.headline)
//                }
//                Text("bla")
//                    .font(.subheadline)
//                    .fontWeight(.light)
//            }.padding()
//                .padding(.vertical)
//                .background(Color("Family"))
//                    .cornerRadius(25)
//            Spacer()
//            VStack(alignment: .leading){
//                HStack(alignment: .center, spacing: 8){
//                    Image(systemName: "star.fill")
//                    Text("Activities 2")
//                        .font(.headline)
//                        .lineLimit(1)
//                }
//                Text("bla")
//                    .font(.subheadline)
//                    .fontWeight(.light)
//                    .lineLimit(2)
//            }.padding()
//                .padding(.vertical)
//                .background(Color("Family"))
//                    .cornerRadius(25)
//            Spacer()
//            VStack(alignment: .leading){
//                HStack(alignment: .center, spacing: 8){
//                    Image(systemName: "star.fill")
//                    Text("Activities 3")
//                        .font(.headline)
//                        .lineLimit(1)
//                }
//                Text("bla")
//                    .font(.subheadline)
//                    .fontWeight(.light)
//                    .lineLimit(2)
//            }.padding()
//                .padding(.vertical)
//                .background(Color("Family"))
//                    .cornerRadius(25)
//            Spacer()
//
//        }
        
        
        VStack (alignment: .leading, spacing: 10){
            Text("25 November")
                .font(.title)
                .fontWeight(.regular)
            
            VStack (alignment: .leading, spacing: 10) {
                HStack {
                        Image(systemName: "heart.circle.fill")
                            .font(.largeTitle)
                        
                        Text("Activity 1")
                            .font(.title)
                            .fontWeight(.bold)
                            
                    
                        Spacer()
            }
                Text("Bla bla bla")
                    .font(.body)
                    .fontWeight(.regular)
            
            }
                .padding()
                .padding(.vertical)
                .background(Color("Family"))
                    .cornerRadius(25)

            VStack (alignment: .leading, spacing: 10){
                HStack {
                    Image(systemName: "calendar.circle.fill")
                        .font(.largeTitle)
                    
                    Text("Activity 2")
                        .font(.title)
                        .fontWeight(.bold)
                
                    Spacer()
                        
                }
                
                Text("Bla bla bla")
                    .font(.body)
                    .fontWeight(.regular)
            }
                    
                .padding()
                .padding(.vertical)
                .background(Color("Freetime"))
                .cornerRadius(25)
            
                Text("26 November")
                .font(.title)
                .fontWeight(.regular)
            
            VStack (alignment: .leading, spacing: 10){
                HStack {
                    Image(systemName: "person.2.circle.fill")
                        .font(.largeTitle)
                    
                    Text("Activity 3")
                        .font(.title)
                        .fontWeight(.bold)
                
                    Spacer()
                        
                }
                
                Text("Bla bla bla")
                    .font(.body)
                    .fontWeight(.regular)
            }
                .padding()
                .padding(.vertical)
                    .background(Color("Friends"))
                        .cornerRadius(25)
            
            VStack (alignment: .leading, spacing: 10){
                HStack {
                    Image(systemName: "books.vertical.circle.fill")
                        .font(.largeTitle)
                    
                    Text("Activity 4")
                        .font(.title)
                        .fontWeight(.bold)
                
                    Spacer()
                        
                }
                
                Text("Bla bla bla")
                    .font(.body)
                    .fontWeight(.regular)
            }
            .padding()
            .padding(.vertical)
            .background(Color("Study"))
                .cornerRadius(25)
            
            
            VStack (alignment: .leading, spacing: 10){
                HStack {
                    Image(systemName: "star.circle.fill")
                        .font(.largeTitle)
                    
                    Text("Activity 5")
                        .font(.title)
                        .fontWeight(.bold)
                
                    Spacer()
                        
                }
                
                Text("Bla bla bla")
                    .font(.body)
                    .fontWeight(.regular)
            }
            .padding()
            .padding(.vertical)
                .background(Color("Extra"))
                .cornerRadius(25)

            
        }.padding() // END VStack che contiene tutto
        
    }
    
    
}

struct DiaryView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryView()
    }
}
