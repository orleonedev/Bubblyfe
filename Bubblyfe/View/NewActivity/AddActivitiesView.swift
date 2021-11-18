//
//  AddActivitiesUIView.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 17/11/21.
//

import SwiftUI

struct AddActivitiesView: View {
    
    @State private var DescriptionText = "" // Variabile di stato per inserimento testo
    @State private var ActivityTitle = "" // Variabile di stato per inserimento nome attività
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading) {
                
                TextField("Activity Title", text: $ActivityTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Section {
                    List {
                        NavigationLink(destination: ChooseBubbleView()) {
                            Text("Bubble")
                        }
                    }
                    
                    TextEditor(text: $DescriptionText)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                        .lineSpacing(5)
                        .frame(minWidth: 0, idealWidth: 1000, maxWidth: 1000, minHeight: 520, idealHeight: 400, maxHeight: 1000, alignment: .topLeading).padding()
                    
                    Spacer()

                }
                
            }
            
            .navigationTitle("Add Activity")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Text("Add").foregroundColor(Color(red: 0.251, green: 0.796, blue: 0.878)))
            .navigationBarItems(leading: Text("Cancel").foregroundColor(Color(red: 0.251, green: 0.796, blue: 0.878)))
        }// END Navigation View
    }
}

struct AddActivitiesUIView_Previews: PreviewProvider {
    static var previews: some View {
        AddActivitiesView()
    }
}
