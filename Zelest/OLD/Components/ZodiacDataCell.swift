//
//  ZodiacDataCell.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 4/8/20.
//

import SwiftUI

struct ZodiacDataCell: View {
    
    let zodiac: Zodiac
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 4.0) {
            Text(zodiac.name)
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            if let rangingDate = zodiac.rangingDate {
                Text(rangingDate)
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.bold)
            }
        }
    }
}

struct ZodiacDataCell_Previews: PreviewProvider {
    static var previews: some View {
        ZodiacDataCell( zodiac: Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "March 19 - April 23", tag: 0))
    }
}
