//
//  OnBoardingNoBubbles.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 17/11/21.
//

import SwiftUI

struct OnBoardingNoBubbles: View {
    var body: some View {
        NavigationView{
            VStack{
                ZStack { // Creazione fiore
                                                
                    Circle() // arancione
                        .foregroundColor(Color.init(red: 1, green: 203/255, blue: 165/255, opacity: 100))                            .frame(width: 88, height: 88)
                        .offset(x: +45, y:-45)
                        
                    Circle() // rosso
                        .foregroundColor(Color.init(red: 1, green: 177/255, blue: 175/255, opacity: 100))                            .frame(width: 88, height: 88, alignment: .center)
                        .offset(x: -45, y: +45)
                    
                    Circle() // celeste
                        .foregroundColor(Color.init(red: 194/255, green: 242/255, blue: 255/255, opacity: 100))                            .frame(width: 88, height: 88, alignment: .center)
                        .offset(x: -45, y: -45)
                    
                    Circle() // verde
                        .foregroundColor(Color.init(red: 188/255, green: 248/255, blue: 143/255, opacity: 100))                            .frame(width: 88, height: 88, alignment: .center)
                        .offset(x: +45, y: +45)
                    
                    Circle() // giallo
                        .foregroundColor(Color.init(red: 1, green: 238/255, blue: 165/255, opacity: 100))                            .frame(width: 88, height: 88, alignment: .center)
                }
                .padding(.bottom,65)
                
                VStack(spacing: 12){
                    Text("Let's add Some Bubbles!")
                        .font(.title2.bold())
                    
                    Text("Have you ever thought you could measure\nyour life through Bubbles?")
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                    
                    Text("Monitor your activities, more points you\nhave the larger the bubbles.")
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                    
                }.padding(32)
                NavigationLink(destination: AddBubbles(), label: {
                    Text("Continue")
                        .padding(.horizontal, 128)
                        .padding(.vertical)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 12, style: .continuous))
                })
            }
            
        }
        .navigationViewStyle(.automatic)
        }
        
}

struct OnBoardingNoBubbles_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingNoBubbles()
    }
}
