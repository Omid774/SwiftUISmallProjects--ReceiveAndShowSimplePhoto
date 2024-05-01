//
//  ContentView.swift
//  Receive&ShowSimplePhoto
//
//  Created by Omid Heydarzadeh on 5/1/24.
//

import SwiftUI

struct MainView: View {
    let url = URL(string: "https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg")
    
    var body: some View {
        ImageManager(url: url!, placeholder: Image(systemName: "photo"))
            .frame(width: 200, height: 200)
    }
}

#Preview {
    MainView()
}
