//
//  FetchImage.swift
//  Receive&ShowSimplePhoto
//
//  Created by Omid Heydarzadeh on 5/1/24.
//

import SwiftUI

class FetchImage: ObservableObject {
    
    @Published var image: UIImage?
    
    func fetch(from url: URL) {
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            
            if let error = error { print("There ia an fetching error! \(error.localizedDescription)") }
            
            if let data = data, let receivedImage = UIImage(data: data) {
                
                DispatchQueue.main.async {
                    self.image = receivedImage
                }
                
            }
            
        }.resume()
        
    }
    
}
