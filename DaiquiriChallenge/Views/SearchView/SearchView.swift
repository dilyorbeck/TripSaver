//
//  SearchView.swift
//  DaiquiriChallenge
//
//  Created by Luca Maria Incarnato on 13/10/24.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var myData = sharedData
    @State var search: String = ""

    var filteredDestinations: [Destination] {
        if search.isEmpty {
            return myData.allDestinations
        } else {
            return myData.allDestinations.filter { destination in
                destination.name.localizedCaseInsensitiveContains(search)
            }
        }
    }

    var body: some View {
        NavigationStack {
            ZStack {
                Color.gray
                    .opacity(0.1)
                    .ignoresSafeArea()

                ScrollView {
                    if search.isEmpty {
                        ForEach(myData.allDestinations) { destination in
                            DestinationCardView(destination: destination)
                                .padding([.leading, .bottom, .trailing])
                        }
                    } else if filteredDestinations.isEmpty {
                        Text("Destination not available")
                            .font(.subheadline)
                            .padding()
                            .foregroundStyle(.gray)
                    } else {
                        ForEach(filteredDestinations) { destination in
                            DestinationCardView(destination: destination)
                                .padding([.leading, .bottom, .trailing])
                        }
                    }
                }
            }
            .navigationTitle("Search")
        }
        .searchable(text: $search, placement: .navigationBarDrawer(displayMode: .always))
    }
}

#Preview {
    SearchView()
}
