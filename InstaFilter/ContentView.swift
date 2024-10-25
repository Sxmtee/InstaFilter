//
//  ContentView.swift
//  InstaFilter
//
//  Created by mac on 23/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var blurAmount = 0.0
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                .blur(radius: blurAmount)
            
            Slider(value: $blurAmount, in: 0...20)
                .onChange(of: blurAmount) { oldValue, newValue in
                    print("New Value \(newValue)")
                    
                }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
