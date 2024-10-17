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
        
        Destination(
            name: "Florence",
            itinerariesAvailable: [
                Itinerary(
                    name: "Florence",
                    duration: 1,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Florence",
                    duration: 3,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Florence",
                    duration: 5,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Florence",
                    duration: 7,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
            ]
        ),
        Destination(
            name: "Milan",
            itinerariesAvailable: [
                Itinerary(
                    name: "Milan",
                    duration: 1,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Milan",
                    duration: 3,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Milan",
                    duration: 5,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Milan",
                    duration: 7,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
            ]
        ),
        Destination(
            name: "Naples",
            itinerariesAvailable: [
                Itinerary(
                    name: "Naples",
                    duration: 1,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Naples",
                    duration: 3,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Naples",
                    duration: 5,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Naples",
                    duration: 7,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
            ]
        ),
        Destination(
            name: "Rome",
            itinerariesAvailable: [
                Itinerary(
                    name: "Rome",
                    duration: 1,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Rome",
                    duration: 3,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Rome",
                    duration: 5,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Rome",
                    duration: 7,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
            ]
        ),
        Destination(
            name: "Venice",
            itinerariesAvailable: [
                Itinerary(
                    name: "Venice",
                    duration: 1,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Venice",
                    duration: 3,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Venice",
                    duration: 5,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Venice",
                    duration: 7,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
            ]
        ),
        Destination(
            name: "Verona",
            itinerariesAvailable: [
                Itinerary(
                    name: "Verona",
                    duration: 1,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Verona",
                    duration: 3,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Verona",
                    duration: 5,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
                Itinerary(
                    name: "Verona",
                    duration: 7,
                    activities: [
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        ),
                        Activity(
                            name: "Prova 1",
                            hourDuration: 1,
                            day: 1,
                            tips: "None"
                        )
                    ]
                ),
            ]
        ),
    ]
    
    @Published var yourItineraries: [Itinerary] = []
    @Published var archivedItineraries: [Itinerary] = []
    
}

var sharedData = Data()
