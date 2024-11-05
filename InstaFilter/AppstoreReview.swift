//
//  AppstoreReview.swift
//  InstaFilter
//
//  Created by mac on 01/11/2024.
//

import SwiftUI
import StoreKit

struct AppstoreReview: View {
    @Environment(\.requestReview) var requestReview
    
    var body: some View {
        Button("Leave a review") {
            requestReview()
        }
    }
}

#Preview {
    AppstoreReview()
}
