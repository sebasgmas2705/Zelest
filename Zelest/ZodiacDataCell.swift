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
        
        VStack(spacing: 4.0) {
            Text(zodiac.name)
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
                
                
            Text(zodiac.rangingDate)
                .foregroundColor(.white)
                .font(.headline)
                .fontWeight(.bold)
        }
    }
}

//struct ZodiacDataCell_Previews: PreviewProvider {
//    static var previews: some View {
//        ZodiacDataCell()
//    }
//}
