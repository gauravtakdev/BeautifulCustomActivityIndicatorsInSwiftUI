//
//  RippleSpinner.swift
//  BeautifulCustomActivityIndicatorsInSwiftUI
//
//  Created by Gaurav Tak on 18/11/25.
//


import SwiftUI

struct RippleSpinner: View {
    @State private var ripple = false
    
    var body: some View {
        ZStack {
            ForEach(0..<3) { i in
                Circle()
                    .stroke(.cyan, lineWidth: 3)
                    .frame(width: 60, height: 60)
                    .scaleEffect(ripple ? 2.5 : 0.5)
                    .opacity(ripple ? 0 : 1)
                    .animation(
                        .easeOut(duration: 1.5)
                            .repeatForever()
                            .delay(Double(i) * 0.3),
                        value: ripple
                    )
            }
        }
        .onAppear { ripple = true }
    }
}