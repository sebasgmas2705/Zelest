//
//  RoundedShape.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 2/9/20.
//

import SwiftUI

struct RoundedShape : Shape {
    
    // for resuable.....
    var corners : UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 45, height: 45))
        
        return Path(path.cgPath)
    }
}
