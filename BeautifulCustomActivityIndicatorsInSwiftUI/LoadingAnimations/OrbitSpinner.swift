//
//  OrbitSpinner.swift
//  CustomActivityIndicatorsInSwiftUI
//
//  Created by Gaurav Tak on 17/11/25.
//
import SwiftUI

struct OrbitSpinner: View {
    @State private var rotate = false
    var scale: CGFloat = 2.0
    
    var body: some View {
        ZStack {
            ForEach(0..<4) { i in
                Circle()
                    .frame(width: 12, height: 12)
                    .foregroundStyle(.red)
                    .offset(x: 20)
                    .rotationEffect(.degrees(rotate ? 360 : 0))
                    .rotationEffect(.degrees(Double(i) * 90))
                    .scaleEffect(rotate ? 1 : 0.6)
                    .animation(
                        .easeInOut(duration: 1.2)
                            .repeatForever()
                            .delay(Double(i) * 0.1),
                        value: rotate
                    )
            }
        }
        .frame(width: 60, height: 60)
        .scaleEffect(scale)
        .onAppear { rotate = true }
    }
}
