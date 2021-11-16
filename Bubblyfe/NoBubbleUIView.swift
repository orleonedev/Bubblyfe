//
//  NoBubbleUIView.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 16/11/21.
//

import SwiftUI

struct NoBubbleUIView: View {
    var body: some View {
        VStack {
            NavigationView {
                
                VStack {
//                    Image("BubblePoints")
//                        .resizable()
//                        .frame(width: 100, height: 50, alignment: .topLeading)
//                        .offset(x: 145, y: -80)
                    
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
                    }.padding(70) // END ZSTACK
                    
                    
                    VStack(alignment: .leading, spacing: 10) { // VStack per testo
                        
                            Text("Hey, it looks like you haven’t added any Bubble yet!")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                            
                            Text("Have you ever thought you could measure your life through Bubbles? The Bubble size depends on how many activities you complete releted to that Bubble. ")
                                .font(.subheadline)
                                .fontWeight(.thin)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.center)
                        
                        
                        Text("Shake or tap everywhere if you want to add some.")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                    }.padding() // termine VStack per testo
                    
//                    TabView {
//                        Text("Bubbles").tabItem {
//                            Image(systemName: "circle.hexagonpath.fill")
//                            Text("Bubbles")
//                        }.tag(1)
//
//                        Text("Second").tabItem {
//                            Image(systemName: "square.fill.on.square.fill")
//                            Text("Activities") }.tag(2)
//                        Text("Third").tabItem {
//                            Image(systemName: "book.closed.fill")
//                            Text("Diary") }.tag(3)
//                    }.padding(5)

                    
                } // END VStack per contenuto
                
                .navigationTitle("Bubbles")
                .navigationBarItems(trailing: Image(systemName: "plus")).foregroundColor(Color(red: 0.251, green: 0.796, blue: 0.878))
                
            } // END Navigation View
        } // END VSTACK
    }
}

struct NoBubbleUIView_Previews: PreviewProvider {
    static var previews: some View {
        NoBubbleUIView()
    }
}
