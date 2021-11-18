//
//  Activitiesv2UIView.swift
//  Bubblyfe
//
//  Created by Simona Ettari on 18/11/21.
//

import SwiftUI
//
//struct Activitiesv2UIView: View {
//    var body: some View {
//        ForEach(0..<2){i in
//            cardView(body(i))
//        }
//    }
//}
//
//struct Activitiesv2UIView_Previews: PreviewProvider {
//    static var previews: some View {
//        Activitiesv2UIView()
//    }
//}

struct cardView: View {
    
    var body: some View {
        VStack {
            ZStack {
               
                HStack {
                    Image(systemName: "heart.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .leading)
                        .foregroundColor(.blue)
                    
                    Text("Family")
                        .fontWeight(.heavy)
                        .frame(width: 240, height: 30, alignment: .leading)
                        .font(.title)
                        .foregroundColor(.blue)
                } // END HStack celeste
            } // ENS ZStack celeste
            
            // CARD ARANCIONE (STUDIO)
            ZStack {
            
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
        }.frame(width: 250, height: 400)
        .cornerRadius(20)
        .shadow(color: Color.init(red: 194/255, green: 242/255, blue: 255/255, opacity: 100), radius: 20)
    }
}
