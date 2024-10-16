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
            HStack {
                DisclosureGroup("\(activity.name) (\(activity.hourDuration)h)") {
                    Text("Tips: \(activity.tips)")
                        .font(.subheadline)
                        .frame(maxWidth: .infinity, maxHeight: cardHeight, alignment: .leading)
                        .padding(.leading, 20.0)
                        .foregroundStyle(Color.gray)
                }
                    .font(.title2)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20.0)
                    .foregroundStyle(.accent)
                Image(activity.name.filter{!$0.isWhitespace}.lowercased())
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: cardHeight)
                    .clipShape(Rectangle())
                    .cornerRadius(30)
            }
        }
        .frame(width: .infinity, height: cardHeight)
        .cornerRadius(30)
    }
}

#Preview {
    ActivityCardView(activity: Activity(name: "Prova 1", hourDuration: 6, day: 0, tips: "No more than 4€"))
}
