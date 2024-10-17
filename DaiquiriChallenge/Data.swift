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
            generalTips: [],
            itinerariesAvailable: [
                Itinerary(
                    name: "Florence",
                    duration: 0,
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
                    duration: 2,
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
            ]
        ),
        Destination(
            name: "Milan",
            generalTips: [],
            itinerariesAvailable: [
                Itinerary(
                    name: "Milan",
                    duration: 0,
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
                    duration: 2,
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
            ]
        ),
        Destination(
            name: "Naples",
            generalTips: [
                "Be aware of pickpockets",
                "The area around the train station “Garibaldi” is a bit dodgy so pay attention around here, and try to avoid it at night.",
                "The train system within Italy is a great way to get to the city, Naples is extremely well connected",
                "There is no train running from Naples' train station to Naples' Airport, but the Naples Alibus Airport Shuttle schedules plenty of buses for 5€.",
                "Ignore any offer of a transfer from Naples Airport to the city center: likely unlicensed drivers with crazy prices.",
                "Avoid ‘tourist menus’ and places where neapolitans don't go to eat."
            ],
            
            itinerariesAvailable: [
                Itinerary(
                    name: "Naples",
                    duration: 0,
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
                    duration: 2,
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
            ]
        ),
        Destination(
            name: "Rome",
            generalTips: [],
            itinerariesAvailable: [
                Itinerary(
                    name: "Rome",
                    duration: 0,
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
                    duration: 2,
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
            ]
        ),
        Destination(
            name: "Venice",
            generalTips: [],
            itinerariesAvailable: [
                Itinerary(
                    name: "Venice",
                    duration: 0,
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
                    duration: 2,
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
            ]
        ),
        Destination(
            name: "Verona",
            generalTips: [],
            itinerariesAvailable: [
                Itinerary(
                    name: "Verona",
                    duration: 0,
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
                    duration: 2,
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
            ]
        ),
    ]
    
    @Published var yourItineraries: [Itinerary] = []
    @Published var archivedItineraries: [Itinerary] = []
    
}

var sharedData = Data()
