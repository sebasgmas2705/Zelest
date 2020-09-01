//
//  Background.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 27/8/20.
//

import SwiftUI

struct Background: View {
    var body: some View {
        Image("illustration1")
            .resizable()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
        
            .mask(CustomShape(radius: 48))
//            .shadow(color: .black, radius: 24, x: 0, y: 1)
            .padding(.bottom)
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
