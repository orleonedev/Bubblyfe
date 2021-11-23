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
    @State private var DescriptionText = "" // Variabile di stato per inserimento testo
    @State var selectedActivity: Activity // nome attività
    
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                VStack (spacing: 10) {
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
                    
                    
                    HStack {

                        Text(selectedActivity.details)
                            .font(.body)
                            .fontWeight(.light)
                            .padding(.vertical, 15)
                        
                        Spacer()
                    }
                    .padding(.horizontal, 20)
                    .background(Color(selectedActivity.category))
                    .cornerRadius(20)
                    .padding(.horizontal, 12)
                    
                    Spacer()
                    
                    Text("Add Your Thoughts")
                        .fontWeight(.thin)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                    
                    Divider()
                    
                    Section {
                        TextEditor(text: $DescriptionText)
                            .lineSpacing(5)
                            .frame(minHeight: 300, alignment: .leading)
                            
                            .multilineTextAlignment(.leading)
                            
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                    .cornerRadius(6.0)
                    
                    Divider()

                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "checkmark.seal.fill")
                            Text("Mark as Done")
                        }
                        .padding(.vertical)
                        .padding(.horizontal, 100)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 12, style: .continuous))
                        .foregroundColor(Color("greenAccent"))
                        
                        
                    }
            }
            
                .navigationTitle(selectedActivity.title)
                .navigationBarItems(leading: Button(action: {showActivityDetailModal.toggle()}) {
                    Text("Activities")
                })
                
                
            }
        }.onAppear{
            print(selectedActivity.title)
        }
        
    }
}

struct ActivityDetail_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetail(showActivityDetailModal: .constant(true), selectedActivity: ActivityStore().study1active ).environmentObject(BubblesStore()).environmentObject(ActivityStore())
    }
}
