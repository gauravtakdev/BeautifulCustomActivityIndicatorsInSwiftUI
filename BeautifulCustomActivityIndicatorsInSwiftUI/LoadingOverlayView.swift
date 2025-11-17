//
//  LoadingOverlayView.swift
//  BeautifulCustomActivityIndicatorsInSwiftUI
//
//  Created by Gaurav Tak on 18/11/25.
//


import SwiftUI

struct LoadingOverlayView: View {
    var message: String? = nil
    @Binding var loaderType: LoaderType
    
    var body: some View {
        ZStack {
            // Dim background
            Color.white.opacity(0.3)
                .ignoresSafeArea()
            
            // Activity indicator + message
            VStack(spacing: 12) {
                switch loaderType {
                case .BarsSpinner:
                    BarsSpinner()
                case .OrbitSpinner:
                    OrbitSpinner()
                case .PulsatingCircle:
                    PulsatingCircle()
                case .SpinnerIndicator:
                    SpinnerIndicator()
                case .RippleSpinner:
                    RippleSpinner()
                case .RotatingDots:
                    RotatingDots()
                }
            }
        }
    }
}
