//
//  APICallingViewWithLoadingOverlay.swift
//  BeautifulCustomActivityIndicatorsInSwiftUI
//
//  Created by Gaurav Tak on 18/11/25.
//
import SwiftUI

struct APICallingViewWithLoadingOverlay: View {
    @State var isLoading = false
    @State var loaderType : LoaderType = .BarsSpinner
    
    var body: some View {
        ZStack {
            
            VStack(spacing: 24) {
                Text("6 Stunning Custom Activity Indicators In SwiftUI").font(.title).multilineTextAlignment(.center).bold().foregroundColor(.white)
                
                Button("Show BarsSpinner") {
                    print("BarsSpinner Button tapped")
                    loaderType = .BarsSpinner
                    fetchPosts()
                }.buttonStyle(.borderedProminent)
                
                Button("Show OrbitSpinner") {
                    print("OrbitSpinner Button tapped")
                    loaderType = .OrbitSpinner
                    fetchPosts()
                }.buttonStyle(.bordered)
                
                Button("Show PulsatingCircle") {
                    print("PulsatingCircle Button tapped")
                    loaderType = .PulsatingCircle
                    fetchPosts()
                }.buttonStyle(.borderedProminent)
                
                Button("Show RippleSpinner") {
                    print("RippleSpinner Button tapped")
                    loaderType = .RippleSpinner
                    fetchPosts()
                }.buttonStyle(.bordered)
                
                Button("Show RotatingDots") {
                    print("RotatingDots Button tapped")
                    loaderType = .RotatingDots
                    fetchPosts()
                }.buttonStyle(.borderedProminent)
                
                Button("Show SpinnerIndicator") {
                    print("SpinnerIndicator Button tapped")
                    loaderType = .SpinnerIndicator
                    fetchPosts()
                }.buttonStyle(.bordered)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            if isLoading {
                LoadingOverlayView(loaderType: $loaderType)
            }
        }.background(Color.black)
        
    }
    
    func fetchPosts() {
        isLoading = true
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            // 1. Handle error
            if let error = error {
                print("❌ Error:", error.localizedDescription)
                return
            }
            
            // 2. Validate response code
            if let httpResponse = response as? HTTPURLResponse {
                print("Status Code:", httpResponse.statusCode)
            }
            
            // 3. Parse data
            guard let data = data else {
                print("❌ No data found")
                return
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
                self.isLoading = false
            })
            
        }
        
        task.resume()
    }
}
