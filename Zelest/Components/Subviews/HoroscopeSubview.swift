//
//  HoroscopeSubview.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 26/8/20.
//

import SwiftUI

struct HoroscopeSubview: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 12.0) {
            Text("March 23")
            
            Text("It's finally time for you to think about just one thing: what makes you happy. Fortunately, that happens to be a person who feels the same way. Give yourself the evening off. Refuse to be put in charge of anything.")
        }
    }
}

struct HoroscopeSubview_Previews: PreviewProvider {
    static var previews: some View {
        HoroscopeSubview()
    }
}
