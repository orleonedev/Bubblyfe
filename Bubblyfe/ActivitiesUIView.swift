//
//  ActivitiesUIView.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 16/11/21.
//

import SwiftUI

struct ActivitiesUIView: View {
    var body: some View {
        
        NavigationView {

            VStack(alignment: .center, spacing: 15) {
                
                
            } // END VStack che contiene tutto
            
            .navigationTitle("Activities")
            .navigationBarItems(trailing: Image(systemName: "plus")).foregroundColor(Color(red: 0.251, green: 0.796, blue: 0.878))
            
            
            
        } // END NAVIGATION VIEW
    }
}

struct ActivitiesUIView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesUIView()
    }
}
