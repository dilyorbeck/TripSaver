//
//  YourTripsView.swift
//  DaiquiriChallenge
//
//  Created by Luca Maria Incarnato on 13/10/24.
//

import SwiftUI

struct YourTripsView: View {
    @ObservedObject var myData = sharedData
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color.gray
                    .opacity(0.1)
                    .ignoresSafeArea()
                if(myData.archivedItineraries.isEmpty && myData.yourItineraries.isEmpty){
                    Text("No trips yet")
                        .font(.subheadline)
                        .padding()
                        .foregroundStyle(.gray)
                } else {
                    ScrollView{
                        ForEach(myData.yourItineraries) { itinerary in
                            ItineraryCardView(itinerary: itinerary, isArchived: false)
                                .padding([.leading, .bottom, .trailing])
                        }
                        Section{
                            VStack{
                                if(!myData.archivedItineraries.isEmpty){
                                    Text("ARCHIVED TRIPS")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading, 20.0)
                                    ForEach(myData.archivedItineraries) { itinerary in
                                        ItineraryCardView(itinerary: itinerary, isArchived: true)
                                            .padding([.leading, .bottom, .trailing])
                                            .opacity(0.7)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Your trips")
        }
    }
}

#Preview {
    YourTripsView()
}
