//
//  ActivityDetail.swift
//  Bubblyfe
//
//  Created by Simona Ettari on 22/11/21.
//

import SwiftUI
import AVFoundation

struct ActivityDetail: View {
    @EnvironmentObject var bubbleStore: BubblesStore
    @EnvironmentObject var activitiesStore: ActivityStore
    @Binding var showActivityDetailModal: Bool
    @State private var DescriptionText = "" // Variabile di stato per inserimento testo
    @Binding var selectedActivity: Activity // nome attività
    @Binding var bpadded: BpAdded?
    let generator = UINotificationFeedbackGenerator()
    
    @State var audioCoin3: AVAudioPlayer?

    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .center) {
                ScrollView{
                VStack (alignment: .leading, spacing: 10) {
                    
                    HStack { // Categoria
                        Image(systemName: selectedActivity.icon)
                            .resizable()
                            .frame(width: 23, height: 23, alignment: .leading)
                            .font(.largeTitle)
                        
                        Text(selectedActivity.category)
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.vertical, 15)
                        
                        Spacer()
                    } // END categoria
                    .padding(.horizontal, 20)
                    .background(selectedActivity.cardColor)
                    .cornerRadius(20)
                    .padding(.horizontal, 12)
                    
                    
                    // Activity Detail
                    VStack(alignment: .leading, spacing: 3) {
                        Text("Activity Details")
                            .bold()
                            .font(.title3)
                            .fontWeight(.light)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 20)
                        
                        HStack {

                            Text(selectedActivity.details)
                                .font(.body)
                                .fontWeight(.light)
                                .padding(.vertical, 25)
                            
                            Spacer()
                        }
                        .padding(.horizontal, 20)
                        .background(selectedActivity.cardColor)
                        .cornerRadius(20)
                        .padding(.horizontal, 12)
                        
                    } // END activity detail
                
                   
                    Spacer()
                    
                    Text("Add Your Thoughts")
                        .bold()
                        .font(.title3)
                        .fontWeight(.light)
                        .padding(.horizontal, 20)
                    
                    VStack{
                        TextField("What are your reflections about your activity?",text: $DescriptionText)
                                .lineLimit(10)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(selectedActivity.cardColor))
                    }.padding(.horizontal)
                    
                        
                    
                    
            } // END primo VSTACK
        }
                Button {
                    print("Detail: \(selectedActivity)")
                    activitiesStore.activities.remove(at: (activitiesStore.activities.firstIndex(of: selectedActivity)!))
                    activitiesStore.addActivity(titl: selectedActivity.title, cate: selectedActivity.category, det: selectedActivity.details, cardCol: Color(selectedActivity.category).opacity(0.3), ico: selectedActivity.icon, refl: DescriptionText, compl: true, dat: Date.now)
                    bubbleStore.addBubblePoints(category: selectedActivity.category)
                    generator.notificationOccurred(.error)
                    bpadded = BpAdded(title: "Bubble Point earned!", descr: "You just earned a Bubble Point for completing that activity!")
                    
                } label: {
                    HStack {
                        Image(systemName: "checkmark.seal.fill")
                        Text("Mark as Done")
                    }
                    .padding(.vertical)
                    .padding(.horizontal, 100)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 12, style: .continuous))
                    .foregroundColor(Color("greenAccent"))
                    
                }
                Text("You can earn Bubble Points this way!")
                    .font(.subheadline).fontWeight(.light).foregroundColor(.secondary)
            
                
                
                
            }
            .alert(item: $bpadded) {
                details in
                Alert(title: Text(details.title),
                      message: Text(details.descr),
                      dismissButton: .default(Text("Ok"), action: {startCoin3()
                    showActivityDetailModal.toggle()
                    
                }))
            }
            .navigationTitle(selectedActivity.title)
            .navigationBarItems(leading: Button(action: {
                    
                
                showActivityDetailModal.toggle()
                
            }) {
                    Text("Back")
            })
        }
        
    }
    
    func startCoin3(){
        if let audioURL = Bundle.main.url(forResource: "coin3", withExtension: "wav") {
            do {
                try audioCoin3 = AVAudioPlayer(contentsOf: audioURL) /// make the audio player
                audioCoin3?.numberOfLoops = .max /// Number of times to loop the audio
                audioCoin3?.play() /// start playing
                audioCoin3?.setVolume(0.2, fadeDuration: 0)
                
            } catch {
                print("Couldn't play audio. Error: \(error)")
            }
            
        } else {
            print("No audio file found")
        }
    }
    
}

//struct ActivityDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        ActivityDetail(showActivityDetailModal: .constant(true), selectedActivity: ActivityStore().study1active ).environmentObject(BubblesStore()).environmentObject(ActivityStore())
//    }
//}
