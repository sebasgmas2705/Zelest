//
//  Home.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 1/9/20.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("Your way to the stars")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.secondary)
            
            Text("Choose your zodiac sign")
                .font(Font.custom("New York", size: 34))
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.primary)
                
            
            
            
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
