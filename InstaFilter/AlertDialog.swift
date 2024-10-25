//
//  AlertDialog.swift
//  InstaFilter
//
//  Created by mac on 25/10/2024.
//

import SwiftUI

struct AlertDialog: View {
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        Button("Hello, World!") {
            showingConfirmation.toggle()
        }
        .frame(width: 300, height: 300)
        .background(backgroundColor)
        .confirmationDialog(
            "Change Background",
            isPresented: $showingConfirmation
        ) {
            Button("Red") { backgroundColor = .red }
            Button("Green") { backgroundColor = .green }
            Button("Blue") { backgroundColor = .blue }
            Button("cancel", role: .cancel) { }
        } message: {
            Text("Select a new color")
        }
    }
}

#Preview {
    AlertDialog()
}
