//
//  ContentView.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 16/11/21.
//

import SwiftUI

struct BubblesUIView: View {
    var body: some View {
        NavigationView {
            
            VStack(alignment: .center) {
                
                //                Image("BubblePoints") // aggiunta immagine BP
                //                    .resizable()
                //                    .frame(width: 100, height: 50, alignment: .topLeading)
                //                    .padding()
                //                    .offset(x: 145, y: -280)
                
                
                // ZStack che contiene tutte le bolle
                ZStack(alignment: .center){
                    
                    
                    // Sovrapposizione icona/bolla arancione
                    VStack {
                        ZStack {
                            Circle() // cerchio arancione
                                .foregroundColor(Color.init(red: 1, green: 203/255, blue: 165/255, opacity: 100))              .frame(width: 88, height: 88)
                            
                            Image(systemName: "books.vertical.circle.fill")
                                .resizable()
                                .frame(width: 65, height: 65, alignment: .center)
                                .foregroundColor(Color.init(red: 255/255, green: 110/255, blue: 4/255))
                            
                            Text("Study")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color(red: 1.0, green: 0.431, blue: 0.016))
                                .offset(x: 0, y: 65)
                            
                        }.offset(x: +100, y:-150)
                    } // END VStack Arancione
                    
                    
                    
                    
                    // Sovrapposizione icona/bolla ROSSO
                    VStack{
                        ZStack {
                            Circle() // rosso
                                .foregroundColor(Color.init(red: 1, green: 177/255, blue: 175/255, opacity: 100))                            .frame(width: 88, height: 88, alignment: .center)
                            
                            
                            Image(systemName: "person.2.circle.fill")
                                .resizable()
                                .frame(width: 65, height: 65, alignment: .center)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.998, opacity: 0.752))
                        } // END ZSTACK ROSSO
                        
                        Text("Friends")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.998, opacity: 0.752))
                            .offset(x: 0, y: -8)
                        
                        
                    }.offset(x: -100, y: +150) // END VSTACK ROSSO
                    
                    
                    
                    // Sovrapposizione icona/bolla CELESTE
                    VStack(alignment: .leading, spacing: 2) {
                        ZStack {
                            
                            Circle() // celeste
                                .foregroundColor(Color.init(red: 194/255, green: 242/255, blue: 255/255, opacity: 100))              .frame(width: 88, height: 88, alignment: .center)
                            
                            Image(systemName: "heart.circle.fill")
                                .resizable()
                                .foregroundColor(.blue)
                                .frame(width: 65, height: 65, alignment: .center)
                            
                        } // END ZSTACK celeste
                        
                        Text("Family")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.blue)
                    }.offset(x: -100, y: -130) // END VSTACK celeste
                    
                    
                    
                    // Sovrapposizione Icona/bolla VERDE
                    VStack {
                        ZStack {
                            Circle() // verde
                                .foregroundColor(Color.init(red: 188/255, green: 248/255, blue: 143/255, opacity: 100))                            .frame(width: 88, height: 88, alignment: .center)
                            
                            Image(systemName: "star.circle.fill")
                                .resizable()
                                .frame(width: 65, height: 65, alignment: .center)
                                .foregroundColor(Color.init(red: 100/255, green: 234/255, blue: 0))
                            
                        }// END ZSTACK VERDE
                        
                        Text("Extra")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 100/255, green: 234/255, blue: 0/255))
                            .offset(x: 0, y: -8)
                        
                    }
                    .offset(x: +100, y: +150) // END VSTACK VERDE
                    
                    
                    // Sovrapposizione cerchio/icona GIALLO
                    VStack {
                        ZStack{
                            Circle() // giallo
                                .foregroundColor(Color.init(red: 1, green: 238/255, blue: 165/255, opacity: 100))                            .frame(width: 88, height: 88, alignment: .center)
                            
                            Image(systemName: "calendar.circle.fill")
                                .resizable()
                                .frame(width: 65, height: 65, alignment: .center)
                                .foregroundColor(Color.init(red: 255/255, green: 207/255, blue: 0))
                            
                        } // END ZSTACK GIALLO
                        
                        Text("Free Time")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 255/255, green: 207/255, blue: 0/255))
                            .offset(x: 0, y: -8)
                        
                        
                    }
                    
                    
                }.padding() // END ZSTACK che contiene tutte le bolle
                
            } // END VSTACK
            .navigationTitle("Bubbles")
            .navigationBarItems(trailing: Image(systemName: "plus")).foregroundColor(Color(red: 0.251, green: 0.796, blue: 0.878))
        } // END NavigationView
    }
}

struct BubblesUIView_Previews: PreviewProvider {
    static var previews: some View {
        BubblesUIView()
    }
}
