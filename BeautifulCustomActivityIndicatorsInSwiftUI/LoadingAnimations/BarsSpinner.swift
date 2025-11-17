//
//  BarsSpinner.swift
//  BeautifulCustomActivityIndicatorsInSwiftUI
//
//  Created by Gaurav Tak on 17/11/25.
//


import SwiftUI

struct BarsSpinner: View {
    @State private var animate = false
    var scale: CGFloat = 2.0
    
    var body: some View {
        ZStack {
            ForEach(0..<12) { i in
                Rectangle()
                    .frame(width: 3, height: 12)
                    .foregroundStyle(.mint)
                    .offset(y: -15)
                    .rotationEffect(.degrees(Double(i) * 30))
                    .opacity(animate ? 0.2 : 1)
                    .animation(
                        .easeInOut(duration: 1)
                            .repeatForever()
                            .delay(Double(i) * 0.05),
                        value: animate
                    )
            }
        }
        .frame(width: 40, height: 40)
        .scaleEffect(scale)
        .onAppear { animate = true }
    }
}