//
//  CardMiniature.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 30/8/20.
//

import SwiftUI

struct CardMiniature: View {
    
    var zodiac: Zodiac = Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "March 19 - April 21", tag: 0)
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                
                ZodiacCell(zodiac: zodiac).tag(zodiac.tag)
                
                ZodiacDataCell(zodiac: zodiac)
            }
            .frame(minWidth: 0, maxWidth: geometry.size.width, minHeight: 0, maxHeight: geometry.size.height / 1.7, alignment: .top)
            
            .background(Image("illustration1")
                            .resizable()
                            .edgesIgnoringSafeArea(.vertical)
                            .aspectRatio(contentMode: .fill) )
            .mask(CustomShape(radius: 48))
        }
    }
}

struct CardMiniature_Previews: PreviewProvider {
    static var previews: some View {
        CardMiniature()
    }
}
