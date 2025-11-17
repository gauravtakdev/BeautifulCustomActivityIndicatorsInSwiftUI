//
//  RotatingDots.swift
//  BeautifulCustomActivityIndicatorsInSwiftUI
//
//  Created by Gaurav Tak on 18/11/25.
//
import SwiftUI

struct RotatingDots: View {
    @State private var rotate = false
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<5) { index in
                Circle()
                    .frame(width: 16, height: 16)
                    .foregroundStyle(.mint)
                    .scaleEffect(rotate ? 1 : 0.5)
                    .animation(
                        .easeInOut(duration: 0.6)
                            .repeatForever()
                            .delay(Double(index) * 0.2),
                        value: rotate
                    )
            }
        }
        .onAppear { rotate = true }
    }
}
