//
//  DestinationCardView.swift
//  DaiquiriChallenge
//
//  Created by Luca Maria Incarnato on 13/10/24.
//

import SwiftUI

struct DestinationCardView: View {
    @Environment(\.colorScheme) var colorScheme
    var destination: Destination
    var cardHeight: CGFloat = 100.0
    
    var body: some View {
        NavigationLink {
            ItineraryAddView(destination: destination)
        } label: {
            ZStack{
                Rectangle()
                    .foregroundStyle(colorScheme == .dark ? .black : .white)
                HStack {
                    Text(destination.name)
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20.0)
                        .foregroundStyle(.accent)
                    Image(destination.name.lowercased())
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
    DestinationCardView(destination: Destination(name: "Naples", itinerariesAvailable: []))
}
