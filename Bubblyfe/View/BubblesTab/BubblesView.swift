//
//  BubblesCopyUI.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 16/11/21.
//

import SwiftUI

struct BubblesView: View {
    @EnvironmentObject var bubbleStore: BubblesStore
    @State var showBubblePoints = false
    var body: some View {
        
            VStack{
                HStack{
                    Spacer()
                    Button(action: {showBubblePoints.toggle()}) {
                        Image("bubblePointsGreen").foregroundColor(Color("greenAccent"))
                        Text(String(bubbleStore.getBubblePoints()))
                            .font(.title).fontWeight(.bold).foregroundColor(Color("greenAccent"))
                    }.sheet(isPresented: $showBubblePoints, content: {
                        BubblePointsView(showBubblePoints: $showBubblePoints)
                    })
                        .padding(11)
                        .padding(.horizontal, 11)
                        .background(RoundedRectangle(cornerRadius: 25, style: .continuous).foregroundColor(.accentColor.opacity(0.10)))
                }.padding(.bottom)
                
                HStack{
                    
//                    NavigationLink(destination:BubbleActivitiesView(whichBubble: .constant("Family"))){
                        VStack{
                            ZStack{
                                Circle() // celeste
                                    .foregroundColor(Color("Family")).frame(width: 72, height: 72, alignment: .center)
                                    
                                Image(systemName: "heart.circle.fill")
                                    .resizable()
                                    .foregroundColor(Color("FamilyIcon"))
                                    .frame(width: 48, height: 48, alignment: .center)
                            }
                            Text("Family")
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(.blue)
                        }
                        .opacity(bubbleStore.family.isActive ? 1 : 0)
                    
                    
                    
                    Spacer()
                    
                    VStack{
                        ZStack{
                            Circle() // cerchio arancione
                                .foregroundColor(Color("Study"))              .frame(width: 72, height: 72)
                            
                            Image(systemName: "books.vertical.circle.fill")
                                .resizable()
                                .frame(width: 48, height: 48, alignment: .center)
                                .foregroundColor(Color("StudyIcon"))
                        }
                        Text("Study")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color("StudyIcon"))
                    }.opacity(bubbleStore.study.isActive ? 1 : 0)
                }.padding(.horizontal)
                
                VStack{
                    ZStack{
                        Circle() // giallo
                            .foregroundColor(Color("Freetime"))
                            .frame(width: 72, height: 72, alignment: .center)
                        
                        Image(systemName: "calendar.circle.fill")
                            .resizable()
                            .frame(width: 48, height: 48, alignment: .center)
                            .foregroundColor(Color("FreetimeIcon"))
                        
                    }
                    Text("Free Time")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("FreetimeIcon"))
                }.opacity(bubbleStore.freeTime.isActive ? 1 : 0)
                
                HStack{
                    VStack{
                        ZStack{
                            Circle() // rosso
                                .foregroundColor(Color("Friends"))
                                .frame(width: 72, height: 72, alignment: .center)
                            
                            
                            Image(systemName: "person.2.circle.fill")
                                .resizable()
                                .frame(width: 48, height: 48, alignment: .center)
                                .foregroundColor(Color("FriendsIcon"))
                            
                        }
                        Text("Friends")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color("FriendsIcon"))
                    }.opacity(bubbleStore.friends.isActive ? 1 : 0)
                    
                    Spacer()
                    
                    VStack{
                        ZStack{
                            Circle() // verde
                                .foregroundColor(Color("Extra"))
                                .frame(width: 72, height: 72, alignment: .center)
                            
                            Image(systemName: "star.circle.fill")
                                .resizable()
                                .frame(width: 48, height: 48, alignment: .center)
                                .foregroundColor(Color("ExtraIcon"))
                            
                        }
                        Text("Extra")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color("ExtraIcon"))
                    }.opacity(bubbleStore.extra.isActive ? 1 : 0)
                    
                }.padding(.horizontal)
                
                    Text("Perfectly balanced...\nas everything should be!")
                        .font(.headline).fontWeight(.light).foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .padding()
                        .padding(.horizontal, 64)
                        .background(RoundedRectangle(cornerRadius: 25).foregroundColor(Color.accentColor.opacity(0.1)))
                
            }.padding()
    }
}

struct BubblesView_Previews: PreviewProvider {
    static var previews: some View {
        BubblesView().environmentObject(BubblesStore())
    }
}
