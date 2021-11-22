//
//  AddActivitiesUIView.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 17/11/21.
//

import SwiftUI

struct AddActivitiesView: View {
    @EnvironmentObject var bubbleStore: BubblesStore
    @EnvironmentObject var activitiesStore: ActivityStore
    @State private var DescriptionText = "" // Variabile di stato per inserimento testo
    @State private var ActivityTitle = "" // Variabile di stato per inserimento nome attività
    @State private var selectedBubble = Bubble.Family// item selezionato
    
    @Binding var showAddActivityModal: Bool

    enum Bubble: String, CaseIterable, Identifiable {
        case Family
        case Study
        case FreeTime
        case Friends
        case Extra
        
        var id: String { self.rawValue }
    }
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading) {
                
                List {
                    
                    TextField("Activity Title", text: $ActivityTitle)
                        
                    
                    Picker("Bubble", selection: $selectedBubble) {
                        HStack {
                            Image(systemName: "heart.circle.fill")
                            Text("Family")
                        }.tag(Bubble.Family)
                        
                        HStack {
                            Image(systemName: "books.vertical.circle.fill")
                            Text("Study")
                        }.tag(Bubble.Study)
                        
                        HStack {
                            Image(systemName: "calendar.circle.fill")
                            Text("Free Time")
                        }.tag(Bubble.FreeTime)
                        
                        HStack {
                            Image(systemName: "person.2.circle.fill")
                            Text("Friends")
                        }.tag(Bubble.Friends)
                        
                        HStack {
                            Image(systemName: "star.circle.fill")
                            Text("Extra")
                        }.tag(Bubble.Extra)
                    }.padding(3) // Fine Picker                    }
                    Section {
                    
                        Text("Activity Description")
                            .font(.headline)
                            .fontWeight(.light)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                        
                        TextEditor(text: $DescriptionText)
                            .padding(4)
                            .lineSpacing(5)
                            .frame(minHeight: 300, alignment: .leading)
                            .cornerRadius(6.0)
                            .multilineTextAlignment(.leading)
                        
                    } // End TextEditor Sector
                    
                } // End List
                
                
            } // End VStack
            
            .navigationTitle("Add Activity").navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button(action: {
                activitiesStore.addActivity(titl: ActivityTitle, cate: selectedBubble.rawValue, det: DescriptionText, cardCol: Color(selectedBubble.rawValue), ico: bubbleStore.getIcon(category: selectedBubble.rawValue))
                showAddActivityModal.toggle()
            }) {
                Text("Done")
            })
            .navigationBarItems(leading: Button(action: {
                showAddActivityModal.toggle()
            }) {
                Text("Cancel")
            })

            
        } // End Navigation View
    }
}


struct AddActivitiesUIView_Previews: PreviewProvider {
    static var previews: some View {
        AddActivitiesView(showAddActivityModal: .constant(true))
    }
}
