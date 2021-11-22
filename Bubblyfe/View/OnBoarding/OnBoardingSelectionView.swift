//
//  OnBoardingSelection.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 18/11/21.
//

import SwiftUI

struct OnBoardingSelectionView: View {
    
    @EnvironmentObject var bubbleStore: BubblesStore
    @Binding var showModal: Bool
    
    var body: some View {
        VStack(alignment: .leading){
            
            Toggle(isOn: $bubbleStore.family.isActive) { // Toggle per Family
                Image(systemName: "heart.circle.fill")
                    .font(.system(size: 28))
                    .foregroundColor(.blue)
                
                Text("Family")
                    .bold()
                    .fontWeight(.light)
                    .foregroundColor(.blue)
                    
            } // END Toggle Family
            
            Divider()
            
            Toggle(isOn: $bubbleStore.study.isActive) { // Toggle per Study
                Image(systemName: "books.vertical.circle.fill")
                    .resizable()
                    .foregroundColor(Color("StudyIcon"))
                    .frame(width: 28, height: 28, alignment: .center)
                
                Text("Study")
                    .bold()
                    .fontWeight(.light)
                    .foregroundColor(Color("StudyIcon"))
                    
            } // END Toggle Free Time
            
            Divider()
            
            Toggle(isOn: $bubbleStore.freeTime.isActive) { // Toggle per Freetime
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
            Spacer()
        }.padding(.top,32)
            .padding(.horizontal)
            .navigationTitle("Choose Bubbles")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button("Done", action: {
                showModal.toggle()
                
            }))
    }
}
struct OnBoardingSelection_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            OnBoardingSelectionView(showModal: .constant(true)).environmentObject(BubblesStore())
        }
    }
}
