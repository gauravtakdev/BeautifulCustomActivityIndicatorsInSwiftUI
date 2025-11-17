//
//  ContentView.swift
//  BeautifulCustomActivityIndicatorsInSwiftUI
//
//  Created by Gaurav Tak on 17/11/25.
//

import SwiftUI

struct ContentView: View {
    let style: Int = 13
    var body: some View {
        VStack(spacing: 80) {
            Text("6 Stunning Custom Activity Indicators In SwiftUI").font(.title).multilineTextAlignment(.center).bold().foregroundColor(.white)
            
            HStack(spacing: 120) {
                BarsSpinner()
                OrbitSpinner()
            }
            HStack(spacing: 120) {
                PulsatingCircle()
                SpinnerIndicator()
            }
            HStack(spacing: 120) {
                RippleSpinner()
                RotatingDots()
            }
            Spacer().frame(height: 20)
        }.padding(.all, 20).frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black.opacity(0.9))
    }
}

#Preview {
    ContentView()
}
