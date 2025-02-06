//
//  LogoView.swift
//  DailyGrind
//
//  Created by Joseph DeWeese on 2/5/25.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        ZStack{
            Image(systemName: "gearshape.2")
                .resizable()
                .frame(width: 45, height: 45)
                .foregroundColor(.blue).opacity(0.3)
            HStack {
                Text("Daily")
                    .font(.callout)
                    .fontDesign(.serif)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .offset(x: 13, y: 1)
                Text("Grind")
                    .font(.callout)
                    .fontDesign(.serif)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .offset(x: 5, y: 1)
              
                Text("1.0")
                    .font(.caption)
                    .fontDesign(.serif)
                    .fontWeight(.regular)
                    .padding(.leading, 10)
                    .foregroundColor(.blue)
                    .offset(x: -15, y: -5)
            }.offset(x: 5)
        }
    }
}
#Preview {
    LogoView()
}
