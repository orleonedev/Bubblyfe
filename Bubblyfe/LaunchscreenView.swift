//
//  Launchscreen.swift.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 16/11/21.
//

import SwiftUI

struct LaunchscreenView: View {
    @State private var showOnboardModal = false
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Spacer()
                    Rectangle().cornerRadius(20).foregroundColor(.gray.opacity(0.2)).frame(width: 118, height: 48, alignment: .center)
                }
                
                Rectangle().cornerRadius(20).foregroundColor(.gray.opacity(0.2)).frame(width: nil, height: 374, alignment: .center)
                Rectangle().cornerRadius(20).foregroundColor(.gray.opacity(0.2)).frame(width: nil, height: 112, alignment: .center)
                Spacer()
                
            }
            .padding()
            .navigationTitle("")
            .onAppear{
                 showOnboardModal.toggle()
                // inserire l'apparizione della modale
            }.sheet(isPresented: $showOnboardModal, content: {
                    OnBoardingStart(showOnboardModal: $showOnboardModal)
            })
           
        }
    }
}

struct LaunchscreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchscreenView()
    }
}
