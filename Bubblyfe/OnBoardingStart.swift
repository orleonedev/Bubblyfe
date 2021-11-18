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
            .background(Color(red: 0.251, green: 0.796, blue: 0.878))
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}


struct OnBoardingStart: View {
    @Binding var showOnboardModal: Bool
    
    var body: some View {
        
        NavigationView{
            VStack(spacing: 28){
                Spacer()
                Text("Welcome to\nBubblyfe")
                    .font(.largeTitle.bold())
                    .multilineTextAlignment(.center)
                Spacer()
                
                HStack(alignment: .center, spacing: 18){
                    Image(systemName: "circle.hexagongrid.fill")
                        .font(.system(size: 48))
                        .foregroundColor(Color(red: 0.251, green: 0.796, blue: 0.878))
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("Bubbles")
                            .font(.title2.bold())
                        Text("Balance your daily routine\nusing bubbles size.")
                            .fontWeight(.thin)
                    }
                    
                }
                HStack(alignment: .center, spacing: 18){
                    Image(systemName: "book.closed.fill")
                        .font(.system(size: 48))
                        .foregroundColor(Color(red: 0.251, green: 0.796, blue: 0.878))
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("Diary")
                            .font(.title2.bold())
                        Text("Take track about\ncompleted activities and \ntake a moment to reflect.")
                            .fontWeight(.thin)
                    }
                    
                }
                HStack(alignment: .center, spacing: 18){
                    Image("BubblePoints1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50, alignment: .center)
                    
                    
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("Bubble Points")
                            .font(.title2.bold())
                        Text("Monitor your activities,\nmore points you have the \nlarger the bubbles.")
                            .fontWeight(.thin)
                    }
                    
                }
                Spacer()
                VStack{
                    Button(action: {}) {
                        Text("To know more about...")
                            .foregroundColor(Color(red: 0.251, green: 0.796, blue: 0.878))
                    }
                    NavigationLink(destination: OnBoardingNoBubbles(), label: {
                        Text("Continue")
                            .padding(.horizontal, 128)
                            .padding(.vertical)
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 12, style: .continuous))
                    })
                    
                }
                
                
            }
        
        }
    }
}

struct OnBoardingStart_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingStart(showOnboardModal: .constant(true))
    }
}
