//
//  RulingPlanetSubview.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 27/8/20.
//

import SwiftUI

struct RulingPlanetSubview: View {
    
    let z = RulingPlanet(id: UUID(), name: "Mars", imageName: "Mars")
    
    var body: some View {
        
        VStack {
            Image(z.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
    
            Text(z.name)
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
    }
}

struct RulingPlanetSubview_Previews: PreviewProvider {
    static var previews: some View {
        RulingPlanetSubview()
    }
}
