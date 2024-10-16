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
                    .padding(.top)
                    .padding(.horizontal)
                    VStack{
                        switch duration {
                        case 0: OneDayView()
                        case 1: ThreeDaysView()
                        case 2: FiveDaysView()
                        case 3: SevenDaysView()
                        default: Text("There's no itinerary for this period")
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    Button("Add to \"Your trips\"") {
                        myData.yourItineraries.append(destination.itinerariesAvailable[duration])
                    }
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .buttonBorderShape(.capsule)
                        .tint(.green)
                        .padding(.bottom, 20)
                }
            }
            .toolbar {
                ToolbarItem (placement: .topBarTrailing){
                    Button ("Tips"){
                        showingTips.toggle()
                    }
                    .sheet(isPresented: $showingTips){
                        GeneralTipsView()
                    }
                }
            }
            .navigationTitle(destination.name)
        }
    }
}

struct OneDayView: View{
    var body: some View {
        Text("Day 1")
    }
}

struct ThreeDaysView: View{
    var body: some View {
        Text("Day 3")
    }
}

struct FiveDaysView: View{
    var body: some View {
        Text("Day 5")
    }
}

struct SevenDaysView: View{
    var body: some View {
        Text("Day 7")
    }
}

#Preview {
    ItineraryAddView(destination: Destination(name: "Naples", itinerariesAvailable: []))
}
