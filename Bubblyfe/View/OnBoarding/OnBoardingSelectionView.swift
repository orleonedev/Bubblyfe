//
//  OnBoardingSelection.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 18/11/21.
//

import SwiftUI

struct OnBoardingSelectionView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .navigationTitle("Choose Bubbles")
            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarItems(trailing: )
    }
}

struct OnBoardingSelection_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            OnBoardingSelectionView()
        }
    }
}
