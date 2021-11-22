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
    @State private var selectedBubble = Bubble.family// item selezionato
    @Binding var showAddActivityModal: Bool
    
    
    enum Bubble: String, CaseIterable, Identifiable {
        case family
        case study
        case freeTime
        case friends
        case extra
        
        var id: String { self.rawValue }
    }
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading) {
                
                TextField("Activity Title", text: $ActivityTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                List {
                    Picker("Bubble", selection: $selectedBubble) {
                        HStack {
                            Image(systemName: "heart.circle.fill")
                            Text("Family")
                        }.tag(Bubble.family)
                        
                        HStack {
                            Image(systemName: "books.vertical.circle.fill")
                            Text("Study")
                        }.tag(Bubble.study)
                        
                        HStack {
                            Image(systemName: "calendar.circle.fill")
                            Text("Free Time")
                        }.tag(Bubble.freeTime)
                        
                        HStack {
                            Image(systemName: "person.2.circle.fill")
                            Text("Friends")
                        }.tag(Bubble.friends)
                        
                        HStack {
                            Image(systemName: "star.circle.fill")
                            Text("Extra")
                        }.tag(Bubble.extra)
                    }
                } // fine lista
                
                TextEditor(text: $DescriptionText)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)
                    .lineSpacing(5)
                    .frame(minHeight: 460, alignment: .leading)
                    .cornerRadius(6.0)
                    .multilineTextAlignment(.leading)
            
            } // End VStack
            
        }
        
        .navigationTitle("Add Activity")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Text("Add").foregroundColor(Color(red: 0.251, green: 0.796, blue: 0.878))).onTapGesture {
                
        }
        .navigationBarItems(leading: Text("Cancel").foregroundColor(Color(red: 0.251, green: 0.796, blue: 0.878)))
    }// END Navigation View
}


struct AddActivitiesUIView_Previews: PreviewProvider {
    static var previews: some View {
        AddActivitiesView(showAddActivityModal: .constant(true)).environmentObject(BubblesStore()).environmentObject(ActivityStore())
    }
}
