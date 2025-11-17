//
//  PulsatingCircle.swift
//  BeautifulCustomActivityIndicatorsInSwiftUI
//
//  Created by Gaurav Tak on 18/11/25.
//


import SwiftUI

struct PulsatingCircle: View {
    @State private var scale = false
    
    var body: some View {
        Circle()
            .stroke(.purple, lineWidth: 4)
            .frame(width: 90, height: 90)
            .scaleEffect(scale ? 1.2 : 0.8)
            .opacity(scale ? 1 : 0.3)
            .animation(.easeInOut(duration: 1).repeatForever(), value: scale)
            .onAppear { scale = true }
    }
}