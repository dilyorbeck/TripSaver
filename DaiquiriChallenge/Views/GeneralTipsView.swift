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
    var destination: Destination = Destination(name: "Naples", generalTips: ["A", "B"], itinerariesAvailable: [])
    
    var body: some View {
        NavigationStack {
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

#Preview {
    GeneralTipsView()
}
