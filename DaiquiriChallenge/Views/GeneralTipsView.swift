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
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.gray
                    .opacity(0.1)
                    .ignoresSafeArea()
                Text("General Tips")
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
