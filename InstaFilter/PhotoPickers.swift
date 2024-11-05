//
//  PhotoPickers.swift
//  InstaFilter
//
//  Created by mac on 01/11/2024.
//

import PhotosUI
import SwiftUI

struct PhotoPickers: View {
    // For picking one image
//    @State private var pickerItem: PhotosPickerItem?
//    @State private var selectedImage: Image?
    
    // for picking multiple images
    @State private var pickerItems = [PhotosPickerItem]()
    @State private var selectedImages = [Image]()
    
    var body: some View {
        VStack {
            PhotosPicker(
                selection: $pickerItems,
                maxSelectionCount: 3,
                matching: .any(of: [.images, .not(.screenshots)])
            ) {
                Label("Select a picture", systemImage: "photo")
            }
            
            ScrollView {
                ForEach(0..<selectedImages.count, id: \.self) { i in
                    selectedImages[i]
                        .resizable()
                        .scaledToFit()
                }
            }
        }
        .onChange(of: pickerItems) {
            Task {
                selectedImages.removeAll()
                
                for item in pickerItems {
                    if let loadedImage = try await item.loadTransferable(type: Image.self) {
                        selectedImages.append(loadedImage)
                    }
                }
            }
        }
    }
}

#Preview {
    PhotoPickers()
}
