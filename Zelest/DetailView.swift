//
//  DetailView.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 9/8/20.
//

import SwiftUI

struct DetailView: View {
    
    let z = Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "March 19 - April 21")
    
    
    var body: some View {

        VStack {
            VStack {
                HStack {
                
                    Spacer()
                    
                    VStack {
                        
                        ZodiacCell(zodiac: z)
                            .scaleEffect(0.75)

                        ZodiacDataCell(zodiac: z)
                            .padding(.bottom)
                    }
                    
                    Spacer()
                }
            }
            .background(Image("illustration1")
                            .resizable()
            )
            .mask(CustomShape(radius: 48))
            .shadow(color: .gray, radius: 12, x: 0, y: 5)
            .edgesIgnoringSafeArea(.top)
            Spacer()
            
            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
