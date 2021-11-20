//
//  Launchscreen.swift.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 16/11/21.
//

import SwiftUI

struct LaunchscreenView: View {
    @EnvironmentObject var bubbleStore: BubblesStore
    @State private var showOnboardModal = false
    @State var startView = false
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Spacer()
                    Rectangle().cornerRadius(20).foregroundColor(.gray.opacity(0.1)).frame(width: 118, height: 48, alignment: .center)
                }
                
                Rectangle().cornerRadius(20).foregroundColor(.gray.opacity(0.1)).frame(width: nil, height: 374, alignment: .center)
                Rectangle().cornerRadius(20).foregroundColor(.gray.opacity(0.1)).frame(width: nil, height: 112, alignment: .center)
                Spacer()
                
            }
            .padding()
            .navigationTitle("")
            .onAppear{
                 showOnboardModal.toggle()
            }.sheet(isPresented: $showOnboardModal, onDismiss: {
                startView.toggle()
            }  , content: {
                OnBoardingStart(showOnboardModal: $showOnboardModal).environmentObject(bubbleStore)
            })
                .fullScreenCover(isPresented: $startView){
                    ContainerView().environmentObject(bubbleStore)
                }
           
        }
    }
    
}



struct LaunchscreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchscreenView().environmentObject(BubblesStore())
    }
}
