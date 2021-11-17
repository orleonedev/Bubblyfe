//
//  OnBoardingStart.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 17/11/21.
//

import SwiftUI

struct ContinueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 128)
            .padding(.vertical)
            .background(Color.cyan)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct OnBoardingStart: View {
    @Binding var showOnboardModal: Bool
    
    var body: some View {
        VStack{
            Text("Welcome to\nBubblyfe")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
            
            HStack(alignment: .center, spacing: 18){
                Image(systemName: "circle.hexagongrid.fill")
                    .font(.system(size: 48))
                    .foregroundColor(.cyan)
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Bubbles")
                        .font(.title2.bold())
                    Text("Balance your daily routine\nusing bubbles size.")
                }
                
            }
            HStack(alignment: .center, spacing: 18){
                Image(systemName: "circle.hexagongrid.fill")
                    .font(.system(size: 48))
                    .foregroundColor(.cyan)
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Bubbles")
                        .font(.title2.bold())
                    Text("Balance your daily routine\nusing bubbles size.")
                }
                
            }
            HStack(alignment: .center, spacing: 18){
                Image(systemName: "circle.hexagongrid.fill")
                    .font(.system(size: 48))
                    .foregroundColor(.cyan)
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Bubbles")
                        .font(.title2.bold())
                    Text("Balance your daily routine\nusing bubbles size.")
                }
                
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("To know more about...")
            }
            Button{
                
            } label: {
                Text("Continue")
                    
            }
            .buttonStyle(ContinueButton())
            
        }
    }
}

struct OnBoardingStart_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingStart(showOnboardModal: .constant(true))
    }
}
