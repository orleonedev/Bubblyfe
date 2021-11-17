//
//  OnBoardingNoBubbles.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 17/11/21.
//

import SwiftUI

struct OnBoardingNoBubbles: View {
    var body: some View {
        VStack{
                Text("Hello")
                    
                    }.navigationTitle("NoBubbles")
                    .navigationViewStyle(.automatic)
    }
}

struct OnBoardingNoBubbles_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingNoBubbles()
    }
}
