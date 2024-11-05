//
//  ContentUnavailable.swift
//  InstaFilter
//
//  Created by mac on 28/10/2024.
//

import SwiftUI

struct ContentUnavailable: View {
    var body: some View {
        ContentUnavailableView {
            Label("No snippets", systemImage: "swift")
        } description: {
            Text("You don't have any saved snippets yet.")
        } actions: {
            Button("Create Snippet") {
                // create a snippet
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentUnavailable()
}
