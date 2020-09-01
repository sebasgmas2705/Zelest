//
//  CompatibilitySubview.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 26/8/20.
//

import SwiftUI

struct CompatibilitySubview: View {
    
    let z = Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: nil, tag: 0)
    
    var body: some View {
        
        VStack {
            ZodiacCell(zodiac: z)
            ZodiacDataCell(zodiac: z)
        }
        
    }
}

struct CompatibilitySubview_Previews: PreviewProvider {
    static var previews: some View {
        CompatibilitySubview()
    }
}
