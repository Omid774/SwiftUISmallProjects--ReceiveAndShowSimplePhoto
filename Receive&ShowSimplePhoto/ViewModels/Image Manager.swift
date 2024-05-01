//
//  Image Manager.swift
//  Receive&ShowSimplePhoto
//
//  Created by Omid Heydarzadeh on 5/1/24.
//

import SwiftUI

struct ImageManager: View {
    
    let url: URL
    
    let placeholder: Image
    
    @StateObject private var fetch = FetchImage()
    
    var body: some View {
        if let image = fetch.image {
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
        } else {
            placeholder
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onAppear {
                    fetch.fetch(from: url)
                }
        }
    }
    
}
