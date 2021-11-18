//
//  ActivitiesUIView.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 16/11/21.
//

import SwiftUI

struct ChooseBubbleUIView: View {
    
    @StateObject var bubblesStore = BubblesStore() // lista di bubble item
    @State private var bubbleSelection: String? // item selezionato
    
    var body: some View {
        NavigationView {

            VStack(alignment: .center, spacing: 15) {
                
//                List { // creazione lista di item bubble
//                    ForEach(bubblesStore.bubbles) {
//                        bubble in
//                        HStack {
//                            Image(systemName: bubble.icon)
//                                .resizable()
//                                .frame(width: 28, height: 28, alignment: .center)
//                                .foregroundColor(bubble.iconColor)
//                            Text(bubble.category)
//                                .bold()
//                                .fontWeight(.light)
//                                .foregroundColor(bubble.iconColor)
//                        }
//                   } // END ForEach
                
                
                
                

            } // END VStack che contiene tutto
            
            .navigationTitle("Bubble")
            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarItems(trailing: Text("Done")).foregroundColor(Color(red: 0.251, green: 0.796, blue: 0.878))
            
            }
            
        } // END NAVIGATION VIEW
    }
}


struct ActivitiesUIView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseBubbleUIView()
    }
}
