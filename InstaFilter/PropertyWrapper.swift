//
//  PropertyWrapper.swift
//  InstaFilter
//
//  Created by mac on 28/10/2024.
//

import SwiftUI

struct PropertyWrapper: View {
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
    PropertyWrapper()
}
