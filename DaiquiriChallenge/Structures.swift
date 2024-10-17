//
//  Destination.swift
//  DaiquiriChallenge
//
//  Created by Luca Maria Incarnato on 13/10/24.
//

import Foundation
import SwiftUI

struct Destination: Identifiable {
    var id: UUID = UUID()
    var name: String
    var generalTips: [String]
    var itinerariesAvailable: [Itinerary]
}

struct Itinerary: Identifiable {
    var id: UUID = UUID()
    var name: String
    var duration: Int
    var activities: [Activity]
}

struct Activity: Identifiable {
    var id: UUID = UUID()
    var name: String
    var hourDuration: Int
    var day: Int
    var tips: String
}
