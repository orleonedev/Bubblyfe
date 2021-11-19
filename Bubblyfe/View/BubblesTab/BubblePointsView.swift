//
//  BubblePointsUIView.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 16/11/21.
//

import SwiftUI

struct BubblePointsView: View {
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .center, spacing: 15) {
                
                // CARD CELESTE (famiglia)
                HStack {
                        Image(systemName: "heart.circle.fill")
                            .foregroundColor(.blue)
                            .font(.largeTitle)
                            .padding()
                        
                        Text("Family")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.blue)
                            .frame(width: 250, alignment: .leading)
                } // END HStack celeste
                    .frame(height: 100)
                    .background(Color.init(red: 194/255, green: 242/255, blue: 255/255, opacity: 100))
                        .cornerRadius(20)
                
                // CARD ARANCIONE (STUDIO)
                HStack {
                        Image(systemName: "calendar.circle.fill")
                            .foregroundColor(Color.init(red: 255/255, green: 207/255, blue: 0))
                            .font(.largeTitle)
                            .padding()
                        
                        
                        Text("Free Time")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.init(red: 255/255, green: 207/255, blue: 0))
                            .frame(width: 250, alignment: .leading)
                    } // END HStack giallo
                    .frame(height: 100)
                    .background(Color.init(red: 1, green: 238/255, blue: 165/255, opacity: 100))
                    .cornerRadius(20)
                
                
                // ZStack GIALLO (free time)
                    HStack {
                            Image(systemName: "person.2.circle.fill")
                                .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.998, opacity: 0.752))
                                .font(.largeTitle)
                                .padding()
                            
                            Text("Friends")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.998, opacity: 0.752))
                                .frame(width: 250, alignment: .leading)
                        
                    } // END HStack rosso
                        .frame(height: 100)
                        .background(Color.init(red: 1, green: 177/255, blue: 175/255, opacity: 100))
                            .cornerRadius(20)
                
                
                // VStack ROSSO (Friends)
                HStack {
                    Image(systemName: "books.vertical.circle.fill")
                            .foregroundColor(Color.init(red: 255/255, green: 110/255, blue: 4/255))
                            .font(.largeTitle)
                            .padding()
                        
                        
                        Text("Study")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.init(red: 255/255, green: 110/255, blue: 4/255))
                            .frame(width: 250, alignment: .leading)
                    } // END HStack arancione
                    .frame(height: 100)
                    .background(Color.init(red: 1, green: 203/255, blue: 165/255, opacity: 100))
                    .cornerRadius(20)
                
                
                //ZStack Verde (Extra)
                HStack {
                    Image(systemName: "star.circle.fill")
                            .foregroundColor(Color.init(red: 100/255, green: 234/255, blue: 0))
                            .font(.largeTitle)
                            .padding()
                        
                        
                        Text("Extra")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.init(red: 100/255, green: 234/255, blue: 0))
                            .frame(width: 250, alignment: .leading)
                    } // END HStack arancione
                    .frame(height: 100)
                    .background(Color.init(red: 188/255, green: 248/255, blue: 143/255, opacity: 100))
                    .cornerRadius(20)

                
            }.padding() // END VStack che contiene tutto
            
            .navigationTitle("Bubble Points")
            .navigationBarItems(trailing: Image(systemName: "plus")).foregroundColor(Color(red: 0.251, green: 0.796, blue: 0.878))
        } // END Navigation View
    }
}

struct BubblePointsUIView_Previews: PreviewProvider {
    static var previews: some View {
        BubblePointsView()
    }
}
