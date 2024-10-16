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
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color.gray
                    .opacity(0.1)
                    .ignoresSafeArea()
                VStack{
                    VStack{
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    Button("Archive trip") {
                        myData.archivedItineraries.append(itinerary)
                        myData.yourItineraries.removeAll(where: { $0.id == itinerary.id })
                        self.mode.wrappedValue.dismiss()
                    }
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .buttonBorderShape(.capsule)
                        .tint(.red)
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
            .navigationTitle(itinerary.name)
        }
    }
}

#Preview {
    ItineraryDetailsView(itinerary: Itinerary(name: "Naples", duration: 7))
}
