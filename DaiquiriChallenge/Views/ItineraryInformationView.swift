//
//  ItineraryInformationView.swift
//  DaiquiriChallenge
//
//  Created by Luca Maria Incarnato on 16/10/24.
//

import SwiftUI

struct ItineraryInformationView: View {
    var duration: Int
    var itinerary: Itinerary
    
    var body: some View {
        if(!itinerary.activities.isEmpty){
            ForEach(0..<(2 * duration + 1), id: \.self) { index in
                Text("Day \(index + 1)")
                    .font(.title2)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                ForEach(itinerary.activities){ activity in
                    if(activity.day == index + 1){
                        ActivityCardView(activity: activity)
                            .padding([.leading, .bottom, .trailing])
                    }
                }
            }
        }
    }
}

#Preview {
    ItineraryInformationView(
        duration: 2,
        itinerary: Itinerary(
            name: "Naples",
            duration: 2,
            activities: [
                Activity(name: "Prova 1", hourDuration: 1, day: 1, tips: "None"),
                Activity(name: "Prova 1", hourDuration: 1, day: 1, tips: "None"),
                Activity(name: "Prova 1", hourDuration: 1, day: 1, tips: "None"),
            ]
        )
    )
}
