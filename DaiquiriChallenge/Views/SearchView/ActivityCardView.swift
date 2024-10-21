//
//  ActivityCardView.swift
//  DaiquiriChallenge
//
//  Created by Alice Castellani on 16/10/24.
//

import SwiftUI

struct ActivityCardView: View {
    @Environment(\.colorScheme) var colorScheme
    var activity: Activity
    var cardHeight: CGFloat = 100.0
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(colorScheme == .dark ? .black : .white)
                DisclosureGroup {
                    Text("Tips: \(activity.tips)")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, maxHeight: cardHeight, alignment: .leading)
                        .padding(.leading, 20.0)
                        .foregroundStyle(Color.gray)
                } label: {
                    Text("\(activity.name) (\(activity.hourDuration)h)")
                        .font(.title3)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(.accent)
                }
                .padding([.leading,.trailing], 20.0)
                .frame(alignment: .leading)
        }
        .frame(width: .infinity, height: cardHeight)
        .cornerRadius(30)
    }
}

#Preview {
    ActivityCardView(activity: Activity(name: "Try spritz", hourDuration: 24, day: 0, tips: "No more than 4€"))
}
