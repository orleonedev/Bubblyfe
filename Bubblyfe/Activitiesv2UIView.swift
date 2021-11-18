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
            VStack(alignment: .leading){
                Spacer(minLength: 10)
                HStack{
                    
                    ZStack (alignment: .leading) {
                        
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 180, height: 150)
                            .foregroundColor(Color.init(red: 194/255, green: 242/255, blue: 255/255, opacity: 100))
                            .padding(.leading, 120)
                        
                        HStack (){
                           
                            Image(systemName: "heart.circle.fill")
        
                                .frame(width: 100, height: 20, alignment: .trailing)
                                .foregroundColor(.blue)
                                .scaleEffect(2.2)
                                .padding()
                            
                            Text("Family")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(.blue)
                                .frame(width: 130, height: 30, alignment: .trailing)
                            
                            
                            
                        } // END HStack celeste
                    } // END ZStack celeste
                    
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 180, height: 150)
                            .foregroundColor(Color.init(red: 1, green: 238/255, blue: 165/255, opacity: 100))
                            .padding(.trailing, 120)
                        
                        HStack {
                            Image(systemName: "calendar.circle.fill")
                                .frame(width: 15, height: 20, alignment: .center)
                                .foregroundColor(Color.init(red: 255/255, green: 207/255, blue: 0))
                                .scaleEffect(2.2)
                                .padding()
                            
                            
                            Text("Free Time")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.init(red: 255/255, green: 207/255, blue: 0))
                                .frame(width: 240, height: 30, alignment: .leading)
                        } // END HStack giallo
                    } // END VSTACK giallo
                    
                }
                
                HStack{
                    
                    ZStack {
                    
                            RoundedRectangle(cornerRadius: 20)
                            .frame(width: 180, height: 150)
                            .foregroundColor(Color.init(red: 1, green: 203/255, blue: 165/255, opacity: 100))
                            .padding(.leading, 120)
                        
                        HStack {
                            Image(systemName: "books.vertical.circle.fill")
                                .frame(width: 80, height: 20, alignment: .trailing)
                                .foregroundColor(Color.init(red: 255/255, green: 110/255, blue: 4/255))
                                .scaleEffect(2.2)
                                .padding()
                            
                            Text("Study")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color(red: 1.0, green: 0.431, blue: 0.016))
                                .frame(width: 110, height: 30, alignment: .trailing)
                            
                        } // END HStack arancione
                    } // END ZStack arancione
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 180, height: 150)
                            .foregroundColor(Color.init(red: 1, green: 177/255, blue: 175/255, opacity: 100))
                            .padding(.trailing, 120)
                        
                        HStack {
                            Image(systemName: "person.2.circle.fill")
                                .frame(width: 15, height: 20, alignment: .center)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.998, opacity: 0.752))
                                .scaleEffect(2.2)
                                .padding()
                            
                            Text("Friends")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.998, opacity: 0.752))
                                .frame(width: 240, height: 30, alignment: .leading)
                        } // END HStack Rosso
                    } // END ZStack Rosso
                    
                }
                
                ZStack {

                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 180, height: 150)
                        .foregroundColor(Color.init(red: 188/255, green: 248/255, blue: 143/255, opacity: 100))
                        .padding(.leading, 120)

                    HStack {
                        Image(systemName: "star.circle.fill")
                            
                            .frame(width: 70, height: 20, alignment: .trailing)
                            .foregroundColor(Color.init(red: 100/255, green: 234/255, blue: 0))
                            .scaleEffect(2.2)
                            .padding()
                            
                        
                        Text("Extra")
                            .fontWeight(.heavy)
                            .font(.title)
                            .foregroundColor(Color.init(red: 100/255, green: 234/255, blue: 0))
                            .frame(width: 100, height: 30, alignment: .trailing)
                            

                    } // END HStack Verde
                } // END ZStack Verde
                
            }
        }
    }
}

struct Activitiesv2UIView_Previews: PreviewProvider {
    static var previews: some View {
        Activitiesv2UIView()
    }
}





