//
//  BubblesCopyUI.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 16/11/21.
//

import SwiftUI

struct BubblesView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .center, spacing: 18){
                HStack{
                    Spacer()
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color.cyan.opacity(0.2))
                            .cornerRadius(20)
                    }// ZStack BP
                    .frame(width: 118, height: 48, alignment: .center)
                    
                }
                Spacer()
                HStack{
                    
                    VStack{
                        ZStack{
                            Circle() // celeste
                                .foregroundColor(Color.init(red: 194/255, green: 242/255, blue: 255/255, opacity: 100)).frame(width: 72, height: 72, alignment: .center)
                                
                            Image(systemName: "heart.circle.fill")
                                .resizable()
                                .foregroundColor(.blue)
                                .frame(width: 48, height: 48, alignment: .center)
                        }
                        Text("Family")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.blue)
                    }
                    
                    Spacer()
                    
                    VStack{
                        ZStack{
                            Circle() // cerchio arancione
                                .foregroundColor(Color.init(red: 1, green: 203/255, blue: 165/255, opacity: 100))              .frame(width: 72, height: 72)
                            
                            Image(systemName: "books.vertical.circle.fill")
                                .resizable()
                                .frame(width: 48, height: 48, alignment: .center)
                                .foregroundColor(Color.init(red: 255/255, green: 110/255, blue: 4/255))
                        }
                        Text("Study")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 1.0, green: 0.431, blue: 0.016))
                    }
                }.padding()
                
                
                VStack{
                    ZStack{
                        Circle() // giallo
                            .foregroundColor(Color.init(red: 1, green: 238/255, blue: 165/255, opacity: 100))                            .frame(width: 72, height: 72, alignment: .center)
                        
                        Image(systemName: "calendar.circle.fill")
                            .resizable()
                            .frame(width: 48, height: 48, alignment: .center)
                            .foregroundColor(Color.init(red: 255/255, green: 207/255, blue: 0))
                        
                    }
                    Text("Free Time")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(red: 255/255, green: 207/255, blue: 0/255))
                }
                
                HStack{
                    VStack{
                        ZStack{
                            Circle() // rosso
                                .foregroundColor(Color.init(red: 1, green: 177/255, blue: 175/255, opacity: 100))                            .frame(width: 72, height: 72, alignment: .center)
                            
                            
                            Image(systemName: "person.2.circle.fill")
                                .resizable()
                                .frame(width: 48, height: 48, alignment: .center)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.998, opacity: 0.752))
                            
                        }
                        Text("Friends")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.998, opacity: 0.752))
                    }
                    
                    Spacer()
                    
                    VStack{
                        ZStack{
                            Circle() // verde
                                .foregroundColor(Color.init(red: 188/255, green: 248/255, blue: 143/255, opacity: 100))                            .frame(width: 72, height: 72, alignment: .center)
                            
                            Image(systemName: "star.circle.fill")
                                .resizable()
                                .frame(width: 48, height: 48, alignment: .center)
                                .foregroundColor(Color.init(red: 100/255, green: 234/255, blue: 0))
                            
                        }
                        Text("Extra")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 100/255, green: 234/255, blue: 0/255))
                    }
                    
                }.padding()
                
                Rectangle()
                    .frame(width: nil, height: 112, alignment: .center)
                    .foregroundColor(Color.cyan.opacity(0.2))
                    .cornerRadius(20)
                
                
                
            }.padding()
            .navigationTitle("Bubbles")
            .navigationBarItems(trailing: Image(systemName: "plus")).foregroundColor(Color(red: 0.251, green: 0.796, blue: 0.878))
        }
    }
}

struct BubblesCopyUI_Previews: PreviewProvider {
    static var previews: some View {
        BubblesView()
    }
}
