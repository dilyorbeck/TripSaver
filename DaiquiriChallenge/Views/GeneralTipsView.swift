//
//  GeneralTipsView.swift
//  DaiquiriChallenge
//
//  Created by Luca Maria Incarnato on 14/10/24.
//

import SwiftUI

struct GeneralTipsView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var myData = sharedData
    var destination: Destination
    
    var body: some View {
        NavigationStack {
            if(destination.generalTips.isEmpty){
                ZStack {
                    Color.gray
                        .opacity(0.1)
                        .ignoresSafeArea()
                    Text("Coming soon")
                        .font(.subheadline)
                        .padding()
                        .foregroundStyle(.gray)
                }
                .navigationTitle("Tips for \(destination.name)")
            } else {
                ZStack {
                    Color.gray
                        .opacity(0.1)
                        .ignoresSafeArea()
                    ScrollView{
                        ForEach(destination.generalTips, id: \.self) {tip in
                            Text("• \(tip)")
                                .font(.title3)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding([.leading,.trailing], 20)
                                .padding(.top, 2)
                        }
                    }
                    .navigationTitle("Tips for \(destination.name)")
                }
                .toolbar {
                    ToolbarItem (placement: .cancellationAction){
                        Button ("Cancel"){
                            dismiss()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    GeneralTipsView(destination: Destination(name: "Naples", generalTips: [], itinerariesAvailable: []))
}
