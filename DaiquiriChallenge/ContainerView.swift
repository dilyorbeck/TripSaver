//
//  ContainerView.swift
//  DaiquiriChallenge
//
//  Created by Luca Maria Incarnato on 13/10/24.
//

import SwiftUI

struct ContainerView: View {
    var body: some View {
        TabView {
            Tab("Search", systemImage: "magnifyingglass"){
                SearchView()
            }
            Tab("Your trips", systemImage: "airplane.departure"){
                YourTripsView()
            }
        }
    }
}

#Preview {
    ContainerView()
}
