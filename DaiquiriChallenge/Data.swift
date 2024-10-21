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
            itinerariesAvailable: []
        ),
        Destination(
            name: "Milan",
            generalTips: [],
            itinerariesAvailable: []
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
                            name: "Have a sfogliatella",
                            hourDuration: 1,
                            day: 1,
                            tips: "Buy from a bakery instead of a café for better prices."
                        ),
                        Activity(
                            name: "Visit National Archaeological Museum of Naples (MANN)",
                            hourDuration: 3,
                            day: 1,
                            tips: "Check for discounted tickets or free entry days (first sunday of the month)."
                        ),
                        Activity(
                            name: "Try the classic Neapolitan pizza",
                            hourDuration: 1,
                            day: 1,
                            tips: "Look for lunch specials or eat where locals dine."
                        ),
                        Activity(
                            name: "Explore the historic center and Spaccanapoli",
                            hourDuration: 2,
                            day: 1,
                            tips: "Explore on foot to avoid transport costs."
                        ),
                        Activity(
                            name: "Visit Naples' Duomo",
                            hourDuration: 1,
                            day: 1,
                            tips: "Entry is usually free; donations welcome."
                        ),
                        Activity(
                            name: "Walk between artisan shops on Via San Gregorio Armeno",
                            hourDuration: 1,
                            day: 1,
                            tips: "Enjoy the atmosphere; avoid on Christmas, too crowded."
                        ),
                        Activity(
                            name: "Try seafood pasta",
                            hourDuration: 1,
                            day: 1,
                            tips: "Choose a trattoria over a touristy restaurant for better deals."
                        ),
                        Activity(
                            name: "Try gelato while walking on via Toledo",
                            hourDuration: 1,
                            day: 1,
                            tips: "Choose a trattoria over a touristy restaurant for better deals."
                        )
                    ]
                ),
                Itinerary(
                    name: "Naples",
                    duration: 1,
                    activities: [
                        Activity(
                            name: "Have a sfogliatella",
                            hourDuration: 1,
                            day: 1,
                            tips: "Buy from a bakery instead of a café for better prices."
                        ),
                        Activity(
                            name: "Visit National Archaeological Museum of Naples (MANN)",
                            hourDuration: 3,
                            day: 1,
                            tips: "Check for discounted tickets or free entry days (first sunday of the month)."
                        ),
                        Activity(
                            name: "Try the classic Neapolitan pizza",
                            hourDuration: 1,
                            day: 1,
                            tips: "Look for lunch specials or eat where locals dine."
                        ),
                        Activity(
                            name: "Explore the historic center and Spaccanapoli",
                            hourDuration: 2,
                            day: 1,
                            tips: "Explore on foot to avoid transport costs."
                        ),
                        Activity(
                            name: "Visit Naples' Duomo",
                            hourDuration: 1,
                            day: 1,
                            tips: "Entry is usually free; donations welcome."
                        ),
                        Activity(
                            name: "Walk between artisan shops on Via San Gregorio Armeno",
                            hourDuration: 1,
                            day: 1,
                            tips: "Enjoy the atmosphere; avoid on Christmas, too crowded."
                        ),
                        Activity(
                            name: "Try seafood pasta",
                            hourDuration: 1,
                            day: 1,
                            tips: "Choose a trattoria over a touristy restaurant for better deals."
                        ),
                        Activity(
                            name: "Try gelato while walking on via Toledo",
                            hourDuration: 1,
                            day: 1,
                            tips: "Prefer a trattoria over a touristy restaurant for better deals."
                        ),
                        Activity(
                            name: "Try cornetto and cappuccino",
                            hourDuration: 1,
                            day: 2,
                            tips: "Enjoy at a bar for local experience."
                        ),
                        Activity(
                            name: "Capodimonte Museum and Park",
                            hourDuration: 4,
                            day: 2,
                            tips: "Bring a student ID for discounts."
                        ),
                        Activity(
                            name: "Have lunch with frittatina (fried pasta)",
                            hourDuration: 1,
                            day: 2,
                            tips: "Grab street food for a cheaper option."
                        ),
                        Activity(
                            name: "Explore quartieri spagnoli",
                            hourDuration: 3,
                            day: 2,
                            tips: "Free to wander with caution; immerse yourself in local life."
                        ),
                        Activity(
                            name: "Certosa di San Martino",
                            hourDuration: 2,
                            day: 2,
                            tips: "Enjoy views for free; pay only for museum access."
                        ),
                        Activity(
                            name: "Vomero neighborhood",
                            hourDuration: 2,
                            day: 2,
                            tips: "Take public transport to save time and money."
                        ),
                        Activity(
                            name: "Enjoy gnocchi or risotto",
                            hourDuration: 1,
                            day: 2,
                            tips: "Take public transport to save time and money."
                        ),
                        Activity(
                            name: "Explore local bars",
                            hourDuration: 1,
                            day: 2,
                            tips: "Look for happy hour specials."
                        ),
                        Activity(
                            name: "Try pastiera",
                            hourDuration: 1,
                            day: 3,
                            tips: "Enjoy with coffee from a local café."
                        ),
                        Activity(
                            name: "Pompeii archaeological site tour",
                            hourDuration: 5,
                            day: 3,
                            tips: "Buy combined tickets for transport and entry."
                        ),
                        Activity(
                            name: "Return to Naples and visit the Royal Palace",
                            hourDuration: 2,
                            day: 3,
                            tips: "Look for discounted tickets on specific days."
                        ),
                        Activity(
                            name: "Castel dell'Ovo",
                            hourDuration: 2,
                            day: 3,
                            tips: "Free to enter; enjoy the views at no cost."
                        ),
                        Activity(
                            name: "Try parmigiana or caprese salad",
                            hourDuration: 2,
                            day: 3,
                            tips: "Check for set menu options."
                        ),
                        Activity(
                            name: "Sweet treat with gelato",
                            hourDuration: 2,
                            day: 3,
                            tips: "Look for promotions or happy hour deals."
                        )
                    ]
                ),
                Itinerary(
                    name: "Naples",
                    duration: 2,
                    activities: [
                        Activity(
                            name: "Visit the Naples Archaeological Museum",
                            hourDuration: 2,
                            day: 1,
                            tips: "Check for multiple museums tickets."
                        ),
                        Activity(
                            name: "Walk through the historic center and Spaccanapoli",
                            hourDuration: 2,
                            day: 1,
                            tips: "Free walking tours available."
                        ),
                        Activity(
                            name: "Lunch with neapolitan pizza",
                            hourDuration: 1,
                            day: 1,
                            tips: "Check for places where locals dine"
                        ),
                        Activity(
                            name: "Visit the Naples Cathedral",
                            hourDuration: 2,
                            day: 1,
                            tips: "Entry is free."
                        ),
                        Activity(
                            name: "Stroll along Via Toledo",
                            hourDuration: 2,
                            day: 1,
                            tips: "Avoid shopping here for budget-friendly souvenirs."
                        ),
                        Activity(
                            name: "Explore Pompeii ruins",
                            hourDuration: 6,
                            day: 2,
                            tips: "Get a combo ticket for Pompeii and Herculaneum."
                        ),
                        Activity(
                            name: "Return to Naples, relax at Piazza Bellini",
                            hourDuration: 2,
                            day: 2,
                            tips: "Pack snacks for the day trip to avoid pricey restaurants."
                        ),
                        Activity(
                            name: "Tour the Royal Palace of Naples",
                            hourDuration: 2,
                            day: 3,
                            tips: "First sunday of the month is free (as any other museum)."
                        ),
                        Activity(
                            name: "Stroll around Piazza del Plebiscito",
                            hourDuration: 2,
                            day: 3,
                            tips: "No entrance fees."
                        ),
                        Activity(
                            name: "Enjoy cuoppo walking in Via Toledo",
                            hourDuration: 1,
                            day: 3,
                            tips: "Check for places where locals dine."
                        ),
                        Activity(
                            name: "Explore Castel dell'Ovo",
                            hourDuration: 2,
                            day: 3,
                            tips: "Free to enter."
                        ),
                        Activity(
                            name: "Visit Capodimonte museum",
                            hourDuration: 3,
                            day: 3,
                            tips: "Check for discounted tickets online."
                        ),
                        Activity(
                            name: "Walk along the Naples seafront",
                            hourDuration: 2,
                            day: 3,
                            tips: "Enjoy on sunset."
                        ),
                        Activity(
                            name: "Explore Catacombs of San Gennaro",
                            hourDuration: 2,
                            day: 4,
                            tips: "Take advantage of the combo ticket with other catacombs."
                        ),
                        Activity(
                            name: "Try pasta alla Genovese",
                            hourDuration: 1,
                            day: 4,
                            tips: "Check for places where locals dine."
                        ),
                        Activity(
                            name: "Wander through Quartieri Spagnoli",
                            hourDuration: 3,
                            day: 4,
                            tips: "Great street art at no cost."
                        ),
                        Activity(
                            name: "Take a ferry to Capri island and explore it",
                            hourDuration: 7,
                            day: 5,
                            tips: "Book tickets in advance, the island is a little expensive."
                        ),
                        Activity(
                            name: "Try Capri's limoncello",
                            hourDuration: 1,
                            day: 5,
                            tips: "Be aware of tourists places, they charge too much."
                        ),
                        Activity(
                            name: "Return to Naples and relax at a nearby park",
                            hourDuration: 2,
                            day: 5,
                            tips: "Free park entry and ferry rides cheaper in the evening."
                        ),
                    ]
                ),
                Itinerary(
                    name: "Naples",
                    duration: 3,
                    activities: [
                        Activity(
                            name: "Visit the Naples Archaeological Museum",
                            hourDuration: 2,
                            day: 1,
                            tips: "Check for multiple museums tickets."
                        ),
                        Activity(
                            name: "Walk through the historic center and Spaccanapoli",
                            hourDuration: 2,
                            day: 1,
                            tips: "Free walking tours available."
                        ),
                        Activity(
                            name: "Lunch with neapolitan pizza",
                            hourDuration: 1,
                            day: 1,
                            tips: "Check for places where locals dine"
                        ),
                        Activity(
                            name: "Visit the Naples Cathedral",
                            hourDuration: 2,
                            day: 1,
                            tips: "Entry is free."
                        ),
                        Activity(
                            name: "Stroll along Via Toledo",
                            hourDuration: 2,
                            day: 1,
                            tips: "Avoid shopping here for budget-friendly souvenirs."
                        ),
                        Activity(
                            name: "Explore Pompeii ruins",
                            hourDuration: 6,
                            day: 2,
                            tips: "Get a combo ticket for Pompeii and Herculaneum."
                        ),
                        Activity(
                            name: "Return to Naples, relax at Piazza Bellini",
                            hourDuration: 2,
                            day: 2,
                            tips: "Pack snacks for the day trip to avoid pricey restaurants."
                        ),
                        Activity(
                            name: "Tour the Royal Palace of Naples",
                            hourDuration: 2,
                            day: 3,
                            tips: "First sunday of the month is free (as any other museum)."
                        ),
                        Activity(
                            name: "Stroll around Piazza del Plebiscito",
                            hourDuration: 2,
                            day: 3,
                            tips: "No entrance fees."
                        ),
                        Activity(
                            name: "Enjoy cuoppo walking in Via Toledo",
                            hourDuration: 1,
                            day: 3,
                            tips: "Check for places where locals dine."
                        ),
                        Activity(
                            name: "Explore Castel dell'Ovo",
                            hourDuration: 2,
                            day: 3,
                            tips: "Free to enter."
                        ),
                        Activity(
                            name: "Visit Capodimonte museum",
                            hourDuration: 3,
                            day: 3,
                            tips: "Check for discounted tickets online."
                        ),
                        Activity(
                            name: "Walk along the Naples seafront",
                            hourDuration: 2,
                            day: 3,
                            tips: "Enjoy on sunset."
                        ),
                        Activity(
                            name: "Explore Catacombs of San Gennaro",
                            hourDuration: 2,
                            day: 4,
                            tips: "Take advantage of the combo ticket with other catacombs."
                        ),
                        Activity(
                            name: "Try pasta alla Genovese",
                            hourDuration: 1,
                            day: 4,
                            tips: "Check for places where locals dine."
                        ),
                        Activity(
                            name: "Wander through Quartieri Spagnoli",
                            hourDuration: 3,
                            day: 4,
                            tips: "Great street art at no cost."
                        ),
                        Activity(
                            name: "Take a ferry to Capri island and explore it",
                            hourDuration: 7,
                            day: 5,
                            tips: "Book tickets in advance, the island is a little expensive."
                        ),
                        Activity(
                            name: "Try Capri's limoncello",
                            hourDuration: 1,
                            day: 5,
                            tips: "Be aware of tourists places, they charge too much."
                        ),
                        Activity(
                            name: "Return to Naples and relax at a nearby park",
                            hourDuration: 2,
                            day: 5,
                            tips: "Free park entry and ferry rides cheaper in the evening."
                        ),
                        Activity(
                            name: "Hike Vesuvius",
                            hourDuration: 4,
                            day: 6,
                            tips: "Take public transport for the best rates and dress comfortably."
                        ),
                        Activity(
                            name: "Visit Sorrento",
                            hourDuration: 3,
                            day: 6,
                            tips: "Book ferry tickets or bus from Naples."
                        ),
                        Activity(
                            name: "Try gnocchi alla sorrentina",
                            hourDuration: 1,
                            day: 6,
                            tips: "Avoid turistic places."
                        ),
                        Activity(
                            name: "Visit Naples Underground",
                            hourDuration: 2,
                            day: 7,
                            tips: "Look for tour group discounts."
                        ),
                        Activity(
                            name: "Botanical garden",
                            hourDuration: 2,
                            day: 7,
                            tips: "Free or low entry fees."
                        ),
                        Activity(
                            name: "Relax at Villa Comunale",
                            hourDuration: 2,
                            day: 7,
                            tips: "Public parks are free."
                        ),
                        Activity(
                            name: "Try famous babà",
                            hourDuration: 2,
                            day: 7,
                            tips: "Alchoolic cake."
                        ),
                    ]
                ),
            ]
        ),
        Destination(
            name: "Rome",
            generalTips: [],
            itinerariesAvailable: []
        ),
        Destination(
            name: "Venice",
            generalTips: [],
            itinerariesAvailable: []
        ),
        Destination(
            name: "Verona",
            generalTips: [],
            itinerariesAvailable: []
        ),
    ]
    
    @Published var yourItineraries: [Itinerary] = []
    @Published var archivedItineraries: [Itinerary] = []
    
}

var sharedData = Data()
