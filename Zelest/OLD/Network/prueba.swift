//
//  prueba.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 28/8/20.
//

import SwiftUI

struct prueba: View {
    
    @State var horoscope: Horoscope?
    
    var body: some View {
        
        
        VStack {
            Text(horoscope?.description ?? "")
            
        }
        .onAppear {
            Api().getHoroscope(sing: "", completion: { (horoscope) in
                self.horoscope = horoscope
            })
        }
    }
}

struct prueba_Previews: PreviewProvider {
    static var previews: some View {
        prueba()
    }
}
