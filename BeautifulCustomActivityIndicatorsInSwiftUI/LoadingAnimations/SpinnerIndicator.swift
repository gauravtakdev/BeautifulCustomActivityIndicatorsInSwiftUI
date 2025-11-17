//
//  SpinnerIndicator.swift
//  BeautifulCustomActivityIndicatorsInSwiftUI
//
//  Created by Gaurav Tak on 18/11/25.
//
import SwiftUI

struct SpinnerIndicator: View {
    @State private var isAnimating = false
    
    var lineWidth: CGFloat = 6
    var size: CGFloat = 80
    var color1: Color = .blue
    var color2: Color = .purple
    
    var body: some View {
        Circle()
            .trim(from: 0.0, to: 0.7)
            .stroke(
                AngularGradient(
                    gradient: Gradient(colors: [color1, color2]),
                    center: .center
                ),
                style: StrokeStyle(lineWidth: lineWidth, lineCap: .round)
            )
            .frame(width: size, height: size)
            .rotationEffect(.degrees(isAnimating ? 360 : 0))
            .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: isAnimating)
            .onAppear { isAnimating = true }
    }
}
