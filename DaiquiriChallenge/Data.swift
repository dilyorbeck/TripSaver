//
//  Data.swift
//  DaiquiriChallenge
//
//  Created by Luca Maria Incarnato on 14/10/24.
//

import Foundation
import SwiftUI

class Data: ObservableObject {
    @Published var allDestinations: [Destination] = [
        Destination(name: "Naples", itinerariesAvailable: [
            Itinerary(name: "Naples", duration: 1),
            Itinerary(name: "Naples", duration: 3),
            Itinerary(name: "Naples", duration: 5),
            Itinerary(name: "Naples", duration: 7)
        ]),
        Destination(name: "Milan", itinerariesAvailable: [
            Itinerary(name: "Milan", duration: 1),
            Itinerary(name: "Milan", duration: 3),
            Itinerary(name: "Milan", duration: 5),
            Itinerary(name: "Milan", duration: 7)
        ])
    ]
    @Published var yourItineraries: [Itinerary] = []
    @Published var archivedItineraries: [Itinerary] = []

}

var sharedData = Data()
