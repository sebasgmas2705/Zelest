//
//  ZodiacCell.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 3/8/20.
//

import SwiftUI

struct ZodiacCell: View {
    
    let zodiac: Zodiac

    var body: some View {
            
        Image(zodiac.imageName)
            .frame(width: 295, height: 376, alignment: .center)
    }
}

struct ZodiacCell_Previews: PreviewProvider {
    static var previews: some View {
        ZodiacCell(zodiac: Zodiac(name: "k", imageName: "illustration2", rangingDate: "d"))
    }
}

struct Zodiac: Identifiable {
    
    var id = UUID()
    var name: String
    var imageName: String
    var rangingDate: String
}

//class Zodiac: Identifiable {
//
//    var id = UUID()
//    var name: String
//    var imageName: String
//    var rangingDate: String
//
//    init(name: String, imageName: String, rangingDate: String) {
//
//        self.name = name
//        self.imageName = imageName
//        self.rangingDate = rangingDate
//    }
//}
