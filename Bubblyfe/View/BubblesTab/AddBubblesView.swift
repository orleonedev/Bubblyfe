//
//  ChooseBubbleItemUIView.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 17/11/21.
//

import SwiftUI

struct AddBubblesView: View {
    
    @EnvironmentObject var bubbleStore: BubblesStore // lista di bubble item
    @Binding var showAddBubbleModal: Bool
    
        var body: some View {
        NavigationView {
            
            VStack(alignment: .leading) {
                
                Toggle(isOn: $bubbleStore.family.isActive) { // Toggle per Family
                    Image(systemName: "heart.circle.fill")
                        .resizable()
                        .foregroundColor(.blue)
                        .frame(width: 28, height: 28, alignment: .center)
                    
                    Text("Family")
                        .bold()
                        .fontWeight(.light)
                        .foregroundColor(.blue)
                        
                } // END Toggle Family
                
                Divider()
                
                Toggle(isOn: $bubbleStore.study.isActive) { // Toggle per Study
                    Image(systemName: "books.vertical.circle.fill")
                        .resizable()
                        .foregroundColor(Color.init(red: 255/255, green: 110/255, blue: 4/255))
                        .frame(width: 28, height: 28, alignment: .center)
                    
                    Text("Study")
                        .bold()
                        .fontWeight(.light)
                        .foregroundColor(Color.init(red: 255/255, green: 110/255, blue: 4/255))
                        
                } // END Toggle Free Time
                
                Divider()
                
                Toggle(isOn: $bubbleStore.freeTime.isActive) { // Toggle per Study
                    Image(systemName: "calendar.circle.fill")
                        .resizable()
                        .foregroundColor(Color.init(red: 255/255, green: 207/255, blue: 0))
                        .frame(width: 28, height: 28, alignment: .center)
                    
                    Text("Free Time")
                        .bold()
                        .fontWeight(.light)
                        .foregroundColor(Color.init(red: 255/255, green: 207/255, blue: 0))
                        
                } // END Toggle Free Time
                
                Divider()
                
                
                Toggle(isOn: $bubbleStore.friends.isActive) { // Toggle per Friends
                    Image(systemName: "person.2.circle.fill")
                        .resizable()
                        .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.998, opacity: 0.752))
                        .frame(width: 28, height: 28, alignment: .center)
                    
                    Text("Friends")
                        .bold()
                        .fontWeight(.light)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.998, opacity: 0.752))
                } // END Toggle Friends
                
                
                Divider()
                
                Toggle(isOn: $bubbleStore.extra.isActive) { // Toggle per Extra
                    Image(systemName: "person.2.circle.fill")
                        .resizable()
                        .foregroundColor(Color(red: 100/255, green: 234/255, blue: 0/255))
                        .frame(width: 28, height: 28, alignment: .center)
                    
                    Text("Extra")
                        .bold()
                        .fontWeight(.light)
                        .foregroundColor(Color(red: 100/255, green: 234/255, blue: 0/255))
                } // END Toggle Extra
                
                Divider()
                
                
                
            }.padding()
            .frame(width: 400, height: 300, alignment: .top)
            .offset(x: 0, y: -200)
            
            .navigationTitle("Add Bubbles")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:  Button("Done", action: {
                showAddBubbleModal.toggle()
                
            }))
        }
    }
}

struct ChooseBubbleItemUIView_Previews: PreviewProvider {
   static var previews: some View {
       AddBubblesView(showAddBubbleModal: .constant(true)).environmentObject(BubblesStore())
    }
}
