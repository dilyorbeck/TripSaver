//
//  TripCardView.swift
//  DaiquiriChallenge
//
//  Created by Luca Maria Incarnato on 14/10/24.
//

import SwiftUI

struct ItineraryCardView: View {
    @Environment(\.colorScheme) var colorScheme
    @ObservedObject var myData = sharedData
    var itinerary: Itinerary
    var cardHeight: CGFloat = 100.0
    
    var body: some View {
        NavigationLink {
            ItineraryDetailsView(itinerary: itinerary)
        } label: {
            ZStack{
                Rectangle()
                    .foregroundStyle(colorScheme == .dark ? .black : .white)
                HStack {
                    Text("\(itinerary.duration) days in \(itinerary.name)")
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20.0)
                        .foregroundStyle(.accent)
                    Image(itinerary.name.lowercased())
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: cardHeight)
                        .clipShape(Rectangle())
                        .cornerRadius(30)
                }
            }
            .frame(width: .infinity, height: cardHeight)
            .cornerRadius(30)
        }
    }
}

#Preview {
    ItineraryCardView(itinerary: Itinerary(name: "Naples", duration: 3))
}
