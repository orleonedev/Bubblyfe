//
//  BubblePointsUIView.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 16/11/21.
//

import SwiftUI

struct BubblePointsUIView: View {
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .center, spacing: 15) {
                
                // CARD CELESTE (famiglia)
                ZStack {
                    
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/).frame(width: 340, height: 100, alignment: .top)
                        .foregroundColor(Color.init(red: 194/255, green: 242/255, blue: 255/255, opacity: 100))              .frame(width: 88, height: 88, alignment: .center) // celeste (family)
                    
                    HStack {
                        Image(systemName: "heart.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40, alignment: .leading)
                        
                        Text("Family")
                            .fontWeight(.heavy)
                            .frame(width: 240, height: 30, alignment: .leading)
                            .font(.title)
                    } // END HStack celeste
                } // ENS ZStack celeste
                
                // CARD ARANCIONE (STUDIO)
                ZStack {
                
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/).frame(width: 340, height: 100, alignment: .top).foregroundColor(Color.init(red: 1, green: 203/255, blue: 165/255, opacity: 100)) // arancione (studio)
                    
                    HStack {
                        Image(systemName: "books.vertical.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40, alignment: .center)
                            .foregroundColor(Color.init(red: 255/255, green: 110/255, blue: 4/255))
                        
                        Text("Study")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 1.0, green: 0.431, blue: 0.016))
                            .frame(width: 240, height: 30, alignment: .leading)
                            .font(.title)
                        
                    } // END HStack arancione
                } // END ZStack arancione
                
                

                
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/).frame(width: 340, height: 100, alignment: .top)
                    .foregroundColor(Color.init(red: 1, green: 238/255, blue: 165/255, opacity: 100)) // giallo (free time)
                
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/).frame(width: 340, height: 100, alignment: .top)
                    .foregroundColor(Color.init(red: 1, green: 177/255, blue: 175/255, opacity: 100)) // rosso (friends)
                
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/).frame(width: 340, height: 100, alignment: .top)
                    .foregroundColor(Color.init(red: 188/255, green: 248/255, blue: 143/255, opacity: 100)) // verde (extra)
                

                
            }.padding() // END VStack che contiene tutto
            
            .navigationTitle("Bubble Points")
            .navigationBarItems(trailing: Image(systemName: "plus")).foregroundColor(Color(red: 0.251, green: 0.796, blue: 0.878))
        } // END Navigation View
    }
}

struct BubblePointsUIView_Previews: PreviewProvider {
    static var previews: some View {
        BubblePointsUIView()
    }
}
