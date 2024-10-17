//
//  ItineraryDetailsView.swift
//  DaiquiriChallenge
//
//  Created by Luca Maria Incarnato on 14/10/24.
//

import SwiftUI

struct ItineraryDetailsView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @ObservedObject var myData = sharedData
    var itinerary: Itinerary
    @State var showingTips: Bool = false
    @State var isArchived: Bool
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color.gray
                    .opacity(0.1)
                    .ignoresSafeArea()
                VStack{
                    ScrollView{
                        ItineraryInformationView(duration: itinerary.duration, itinerary: itinerary)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    Button(action: {
                        if(!isArchived){
                            myData.archivedItineraries.append(Itinerary(name: itinerary.name, duration: itinerary.duration, activities: itinerary.activities))
                            myData.yourItineraries.removeAll(where: { $0.id == itinerary.id })
                        } else {
                            myData.yourItineraries.append(Itinerary(name: itinerary.name, duration: itinerary.duration, activities: itinerary.activities))
                            myData.archivedItineraries.removeAll(where: { $0.id == itinerary.id })
                        }
                        isArchived.toggle()
                    }) {
                        Text(isArchived ? "Unarchive trip" : "Archive trip")
                    }
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .buttonBorderShape(.capsule)
                        .tint(isArchived ? .gray : .red)
                        .padding(.bottom, 20)
                }
            }
            .toolbar {
                ToolbarItem (placement: .topBarTrailing){
                    Button ("Tips"){
                        showingTips.toggle()
                    }
                    .sheet(isPresented: $showingTips){
                        GeneralTipsView(destination: myData.allDestinations.first(where: { $0.name == itinerary.name })!)
                    }
                }
            }
            .navigationTitle(itinerary.name)
        }
    }
}

#Preview {
    ItineraryDetailsView(itinerary: Itinerary(name: "Naples", duration: 1, activities: [Activity(name: "Prova 1", hourDuration: 1, day: 1, tips: "None")]), isArchived: false)
}
