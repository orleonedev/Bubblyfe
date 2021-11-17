//
//  OnBoardingStart.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 17/11/21.
//

import SwiftUI

struct OnBoardingStart: View {
    var body: some View {
        VStack{
            Text("Welcome to \nBubblyfe")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
            
            HStack(alignment: .center, spacing: 18){
                Image(systemName: "circle.hexagongrid.fill")
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Bubbles")
                        .font(.title2.bold())
                    Text("Balance your daily routine\nusing bubbles size.")
                }
                
            }
            HStack(alignment: .center, spacing: 18){
                Image(systemName: "circle.hexagongrid.fill")
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Bubbles")
                        .font(.title2.bold())
                    Text("Balance your daily routine\nusing bubbles size.")
                }
                
            }
            HStack(alignment: .center, spacing: 18){
                Image(systemName: "circle.hexagongrid.fill")
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Bubbles")
                        .font(.title2.bold())
                    Text("Balance your daily routine\nusing bubbles size.")
                }
                
            }
            Text("To know more about...")
            Button("Sign In", action: {}).buttonStyle(.bordered).background(.cyan)
        }
    }
}

struct OnBoardingStart_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingStart()
    }
}
