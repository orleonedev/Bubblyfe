//
//  Activitiesv2UIView.swift
//  Bubblyfe
//
//  Created by Simona Ettari on 18/11/21.
//

import SwiftUI

struct Activitiesv2UIView: View {
    
    var body: some View {
        ScrollView{
            
            VStack{
                Spacer(minLength: 20)
                HStack{
                    Spacer(minLength: 20)
                    HStack {
                            Image(systemName: "heart.circle.fill")
                                .foregroundColor(.blue)
                                .font(.title)
                                .padding()
                            
                            Text("Family")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(.blue)
                                .frame(width: 120)
                        
                    } // END HStack celeste
                        .frame(height: 150)
                        .background(Color.init(red: 194/255, green: 242/255, blue: 255/255, opacity: 100))
                            .cornerRadius(20)

                    HStack {
                            Image(systemName: "calendar.circle.fill")
                                .foregroundColor(Color.init(red: 255/255, green: 207/255, blue: 0))
                                .font(.title)
                                .padding()
                            
                            
                            Text("Free Time")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.init(red: 255/255, green: 207/255, blue: 0))
                                .frame(width: 120)
                        } // END HStack giallo
                        .frame(height: 150)
                        .background(Color.init(red: 1, green: 238/255, blue: 165/255, opacity: 100))
                        .cornerRadius(20)
                    Spacer(minLength: 20)
                } // END 1 HStack
                
                
                
                HStack{
                    Spacer(minLength: 20)
                    HStack {
                            Image(systemName: "person.2.circle.fill")
                                .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.998, opacity: 0.752))
                                .font(.title)
                                .padding()
                            
                            Text("Friends")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.998, opacity: 0.752))
                                .frame(width: 120)
                        
                    } // END HStack rosso
                        .frame(height: 150)
                        .background(Color.init(red: 1, green: 177/255, blue: 175/255, opacity: 100))
                            .cornerRadius(20)
                    

                    HStack {
                        Image(systemName: "books.vertical.circle.fill")
                                .foregroundColor(Color.init(red: 255/255, green: 110/255, blue: 4/255))
                                .font(.title)
                                .padding()
                            
                            
                            Text("Study")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.init(red: 255/255, green: 110/255, blue: 4/255))
                                .frame(width: 120)
                        } // END HStack arancione
                        .frame(height: 150)
                        .background(Color.init(red: 1, green: 203/255, blue: 165/255, opacity: 100))
                        .cornerRadius(20)
                    Spacer(minLength: 20)
                } // END 2 HStack
                
                HStack {
                    Image(systemName: "star.circle.fill")
                            .foregroundColor(Color.init(red: 100/255, green: 234/255, blue: 0))
                            .font(.title)
                            .padding()
                        
                        
                        Text("Extra")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.init(red: 100/255, green: 234/255, blue: 0))
                            .frame(width: 125)
                    } // END HStack arancione
                    .frame(height: 150)
                    .background(Color.init(red: 188/255, green: 248/255, blue: 143/255, opacity: 100))
                    .cornerRadius(20)
                
            }
        }
    }
}

struct Activitiesv2UIView_Previews: PreviewProvider {
    static var previews: some View {
        Activitiesv2UIView()
    }
}





