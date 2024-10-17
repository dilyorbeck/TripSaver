//
//  ItineraryAddView.swift
//  DaiquiriChallenge
//
//  Created by Luca Maria Incarnato on 13/10/24.
//

import SwiftUI

struct ItineraryAddView: View {
    @ObservedObject var myData = sharedData
    var destination: Destination
    var data = Data()
    @State var duration: Int = 0
    @State var showingTips: Bool = false
    @State var isAdded = false
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color.gray
                    .opacity(0.1)
                    .ignoresSafeArea()
                VStack{
                    Picker("Select period", selection: $duration) {
                        Text("1 day").tag(0)
                        Text("3 days").tag(1)
                        Text("5 days").tag(2)
                        Text("7 days").tag(3)
                    }
                    .pickerStyle(.segmented)
                    .padding(.vertical)
                    .padding(.horizontal)
                    .task(id: duration) {
                        isAdded = false
                    }
                    ScrollView{
                        ItineraryInformationView(duration: duration, itinerary: destination.itinerariesAvailable[duration])
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    Button(isAdded ? "Added" : "Add to \"Your trips\"") {
                        if duration < destination.itinerariesAvailable.count {
                            myData.yourItineraries.append(Itinerary(name: destination.itinerariesAvailable[duration].name, duration: destination.itinerariesAvailable[duration].duration, activities: destination.itinerariesAvailable[duration].activities))
                            isAdded = true
                        }
                    }
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .buttonBorderShape(.capsule)
                        .tint(isAdded ? .gray : .green)
                        .padding(.bottom, 20)
                        .disabled(isAdded)
                }
            }
            .toolbar {
                ToolbarItem (placement: .topBarTrailing){
                    Button ("Tips"){
                        showingTips.toggle()
                    }
                    .sheet(isPresented: $showingTips){
                        GeneralTipsView(destination: destination)
                    }
                }
            }
            .navigationTitle(destination.name)
            .onAppear {
                isAdded = false
            }
        }
    }
}

#Preview {
    ItineraryAddView(destination: Destination(name: "Naples", generalTips: [], itinerariesAvailable: [Itinerary(name: "Naples", duration: 0, activities: [Activity(name: "Prova1", hourDuration: 1, day: 1, tips: "None")])]))
}
