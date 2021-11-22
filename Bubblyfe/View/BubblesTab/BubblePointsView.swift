//
//  BubblePointsUIView.swift
//  Bubblyfe
//
//  Created by Jasmine Aufiero on 16/11/21.
//

import SwiftUI

struct BubblePointsView: View {
    @EnvironmentObject var bubbleStore: BubblesStore
    @Binding var showBubblePoints: Bool
    var body: some View {
        
        NavigationView {
            
            VStack {
                HStack{
                    Spacer()
                    HStack{
                        Image("bubblePointsGreen")
                        Text(String(bubbleStore.getBubblePoints()))
                            .font(.title).fontWeight(.bold).foregroundColor(Color("greenAccent"))
                    }.padding()
                        .background(RoundedRectangle(cornerRadius: 25, style: .continuous).foregroundColor(.accentColor.opacity(0.15)))
                    
                }
               
                HStack {
                        Image(systemName: "heart.circle.fill")
                            .font(.largeTitle)
                        
                        Text("Family")
                            .font(.title)
                            .fontWeight(.bold)
                            
                    
                        Spacer()
                    Image("bubblePointsBlack")
                    Text(String(bubbleStore.family.bubblePoints))
                        .font(.title).fontWeight(.bold)
                }
                    .padding()
                    .padding(.vertical)
                    .background(Color("Family"))
                        .cornerRadius(25)

                HStack {
                        Image(systemName: "calendar.circle.fill")
                            .font(.largeTitle)
                        
                        Text("Free Time")
                            .font(.title)
                            .fontWeight(.bold)
                    
                    Spacer()
                    Image("bubblePointsBlack")
                    Text(String(bubbleStore.freeTime.bubblePoints))
                        .font(.title).fontWeight(.bold)
                            
                    }
                    .padding()
                    .padding(.vertical)
                    .background(Color("Freetime"))
                    .cornerRadius(25)
                
                    HStack {
                            Image(systemName: "person.2.circle.fill")
                                .font(.largeTitle)
                            
                            Text("Friends")
                                .font(.title)
                                .fontWeight(.bold)
                                
                        Spacer()
                        Image("bubblePointsBlack")
                        Text(String(bubbleStore.friends.bubblePoints))
                            .font(.title).fontWeight(.bold)
                        
                    }
                    .padding()
                    .padding(.vertical)
                        .background(Color("Friends"))
                            .cornerRadius(25)
                
                HStack {
                    Image(systemName: "books.vertical.circle.fill")
                            .font(.largeTitle)
                        
                        Text("Study")
                            .font(.title)
                            .fontWeight(.bold)
        
                    Spacer()
                    Image("bubblePointsBlack")
                    Text(String(bubbleStore.study.bubblePoints))
                        .font(.title).fontWeight(.bold)
                    
                    }
                .padding()
                .padding(.vertical)
                .background(Color("Study"))
                    .cornerRadius(25)
                
                
                HStack {
                    Image(systemName: "star.circle.fill")
                            .font(.largeTitle)
                        
                        Text("Extra")
                            .font(.title)
                            .fontWeight(.bold)
                    Spacer()
                    Image("bubblePointsBlack")
                    Text(String(bubbleStore.extra.bubblePoints))
                        .font(.title).fontWeight(.bold)
                    }
                .padding()
                .padding(.vertical)
                    .background(Color("Extra"))
                    .cornerRadius(25)

                
            }.padding() // END VStack che contiene tutto
            
            .navigationTitle("Bubble Points")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button("Done", action: {
                showBubblePoints.toggle()
                
            }))
        } // END Navigation View
    }
}

struct BubblePointsUIView_Previews: PreviewProvider {
    static var previews: some View {
        BubblePointsView(showBubblePoints: .constant(true)).environmentObject(BubblesStore())
    }
}
