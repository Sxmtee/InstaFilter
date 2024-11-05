//
//  ShareLinkView.swift
//  InstaFilter
//
//  Created by mac on 01/11/2024.
//

import SwiftUI

struct ShareLinkView: View {
    var body: some View {
//        ShareLink(
//            item: URL(string: "https://www.hackingwithswift.com")!,
//            subject: Text("Learn Football here"),
//            message: Text("Check out the 100 Days of Football!")
//        ) {
//            Label("Spread the word about Swift", systemImage: "swift")
//        }
        
        let example = Image(.example)

        ShareLink(
            item: example,
            preview: SharePreview("Singapore Airport", image: example)
        ) {
            Label("Click to share", systemImage: "airplane")
        }
    }
}

#Preview {
    ShareLinkView()
}
