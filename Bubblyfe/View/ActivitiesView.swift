//
//  ActivitiesView.swift
//  Bubblyfe
//
//  Created by Oreste Leone on 20/11/21.
//

import SwiftUI

struct ActivitiesView: View {
    @EnvironmentObject var activitiesStore: ActivityStore
    var body: some View {
        VStack{
            HStack{
                Text(activitiesStore.family1active.title)
            }
        }
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView().environmentObject(ActivityStore())
    }
}
