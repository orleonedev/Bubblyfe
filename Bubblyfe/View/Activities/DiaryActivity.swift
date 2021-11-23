//
//  DiaryActivity.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 23/11/21.
//

import SwiftUI

struct DiaryActivity: View {
    
    @EnvironmentObject var bubbleStore: BubblesStore
    @EnvironmentObject var activitiesStore: ActivityStore
    @Binding var showDiaryActivityModal: Bool
    @State private var DescriptionText = "" // Variabile di stato per inserimento testo
    @State var selectedActivity: Activity // nome attività
    
    var body: some View {
        NavigationView {
            
            VStack {
                VStack (alignment: .leading, spacing: 25) {
                    
                    HStack { // Categoria
                        Image(systemName: selectedActivity.icon)
                            .resizable()
                            .frame(width: 23, height: 23, alignment: .leading)
                            .font(.largeTitle)
                        
                        Text(selectedActivity.category)
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.vertical, 15)
                        
                        Spacer()
                    }
                    .padding(.horizontal, 20)
                    .background(Color(selectedActivity.category))
                    .cornerRadius(20)
                    .padding(.horizontal, 12)
                    
                    
                    VStack(alignment: .leading, spacing: 3) {
                        Text("Activity Details")
                            .bold()
                            .font(.title3)
                            .fontWeight(.light)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 20)
                        
                        
                        HStack {

                            Text(selectedActivity.details)
                                .font(.body)
                                .fontWeight(.light)
                                .padding(.vertical, 25)
                            
                            Spacer()
                        }
                        .padding(.horizontal, 20)
                        .background(Color(selectedActivity.category))
                        .cornerRadius(20)
                        .padding(.horizontal, 12)
                    }
                    
                    
                    VStack(alignment: .leading, spacing: 3) {
                        Text("Activity Reflections")
                            .font(.title3)
                            .bold()
                            .fontWeight(.light)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 20)
                        
                        HStack {

                            Text(selectedActivity.reflections)
                                .font(.body)
                                .fontWeight(.light)
                                .padding(.vertical, 25)
                            
                            Spacer()
                        }
                        .padding(.horizontal, 20)
                        .background(Color(selectedActivity.category))
                        .cornerRadius(20)
                        .padding(.horizontal, 12)
                    }

                    Spacer()
    
            }
            
                .navigationTitle(selectedActivity.title)
                .navigationBarItems(leading: Button(action: {
                        
                    
                    showDiaryActivityModal.toggle()
                    
                }) {
                    HStack {
                        Image(systemName: "chevron.backward")
                        Text("Activities")
                    }
                    
                })
                
                
            }.padding(.top)
        }.onAppear{
            print(selectedActivity.title)
        }
    }
}

struct DiaryActivity_Previews: PreviewProvider {
    static var previews: some View {
        DiaryActivity(showDiaryActivityModal: .constant(true), selectedActivity: ActivityStore().family1done).environmentObject(ActivityStore()).environmentObject(BubblesStore())
    }
}
