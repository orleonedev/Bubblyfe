//
//  ChooseBubbleItemUIView.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 17/11/21.
//

import SwiftUI

struct AddBubbles: View {
    
    @StateObject var bubblesStore = BubblesStore() // lista di bubble item
    @State private var checkfamily :Bool = false
    @State private var checkStudy :Bool = false
    @State private var checkFreeTime :Bool = false
    @State private var checkFriends :Bool = false
    @State private var checkExtra :Bool = false
    
        var body: some View {
        NavigationView {
            
            VStack {
                Toggle(isOn: $checkfamily) { // Toggle per Family
                    Image(systemName: "heart.circle.fill")
                        .resizable()
                        .foregroundColor(.blue)
                        .frame(width: 28, height: 28, alignment: .center)
                    
                    Text("Family")
                        .bold()
                        .fontWeight(.light)
                        .foregroundColor(.blue)
                        
                } // END Toggle Family
                
                Toggle(isOn: $checkStudy) { // Toggle per Study
                    Image(systemName: "books.vertical.circle.fill")
                        .resizable()
                        .foregroundColor(Color.init(red: 255/255, green: 110/255, blue: 4/255))
                        .frame(width: 28, height: 28, alignment: .center)
                    
                    Text("Study")
                        .bold()
                        .fontWeight(.light)
                        .foregroundColor(Color.init(red: 255/255, green: 110/255, blue: 4/255))
                        
                } // END Toggle Free Time
                
                Toggle(isOn: $checkFreeTime) { // Toggle per Study
                    Image(systemName: "calendar.circle.fill")
                        .resizable()
                        .foregroundColor(Color.init(red: 255/255, green: 207/255, blue: 0))
                        .frame(width: 28, height: 28, alignment: .center)
                    
                    Text("Free Time")
                        .bold()
                        .fontWeight(.light)
                        .foregroundColor(Color.init(red: 255/255, green: 207/255, blue: 0))
                        
                } // END Toggle Free Time
                
                
                Toggle(isOn: $checkFriends) { // Toggle per Friends
                    Image(systemName: "heart.circle.fill")
                        .resizable()
                        .foregroundColor(Color.init(red: 255/255, green: 207/255, blue: 0))
                        .frame(width: 28, height: 28, alignment: .center)
                    
                    Text("Free Time")
                        .bold()
                        .fontWeight(.light)
                        .foregroundColor(Color.init(red: 255/255, green: 207/255, blue: 0))
                        
                } // END Toggle Free Time
                
                
                
                
                
                
                
                
            }.padding()
            
            .navigationTitle("Add Bubbles")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ChooseBubbleItemUIView_Previews: PreviewProvider {
   static var previews: some View {
      AddBubbles()
    }
}
