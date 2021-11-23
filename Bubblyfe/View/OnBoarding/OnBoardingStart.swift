//
//  OnBoardingStart.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 17/11/21.
//

import SwiftUI


struct OnBoardingStart: View {
    @EnvironmentObject var bubbleStore: BubblesStore
    @Binding var showOnboardModal: Bool
    
    var body: some View {
        
        NavigationView{
            VStack(spacing: 20){
                Spacer()
                Text("Welcome to\nBubblyfe")
                    .font(.largeTitle.bold())
                    .multilineTextAlignment(.center)
                Spacer()
                
                HStack(alignment: .center, spacing: 12){
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
                HStack(alignment: .center, spacing: 12){
                    Image(systemName: "book.closed.fill")
                        .font(.system(size: 48))
                        .foregroundColor(Color(red: 0.251, green: 0.796, blue: 0.878))
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("Diary")
                            .font(.title2.bold())
                        Text("Take track about\ncompleted activities and \ntake a moment to reflect.")
                            .fontWeight(.thin)
                            .allowsTightening(true)
                    }
                    
                }
                HStack(alignment: .center, spacing: 12){
                    Image("BubblePointsAccent")
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
                    Button(action: {
                        showOnboardModal.toggle()
                    }) {
                        Text("Continue")
                            .padding(.horizontal, 128)
                            .padding(.vertical)
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 12, style: .continuous))
                    }
//                    NavigationLink(destination: OnBoardingNoBubbles(showModal: $showOnboardModal).environmentObject(bubbleStore), label: {
//                        Text("Continue")
//                            .padding(.horizontal, 128)
//                            .padding(.vertical)
//                            .foregroundColor(.white)
//                            .background(RoundedRectangle(cornerRadius: 12, style: .continuous))
//                    })
                    
                }
                
                
            }
        
        }.navigationViewStyle(.stack)
    }
}

struct OnBoardingStart_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingStart(showOnboardModal: .constant(true)).environmentObject(BubblesStore())
    }
}
