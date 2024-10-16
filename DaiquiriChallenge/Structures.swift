//
//  Destination.swift
//  DaiquiriChallenge
//
//  Created by Luca Maria Incarnato on 13/10/24.
//

import Foundation
import SwiftUI

struct Itinerary: Identifiable {
    var id: UUID = UUID()
    var name: String
    var duration: Int
}

struct Destination: Identifiable {
    var id: UUID = UUID()
    var name: String
    var itinerariesAvailable: [Itinerary]
}
