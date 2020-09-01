//
//  MainButton.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 5/8/20.
//

import SwiftUI

struct MainButton: View {
    
    let zodiac: Zodiac
    
    var body: some View {
        Button(action: {
            //accion que ha de llevar a cabo el boton
            print("BOTON PRINCIPAL")
        }) {

            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .frame(width: 288.0, height: 46.0)
                .foregroundColor(Color("AccentColor"))
                .overlay(Text("Choose " + zodiac.name.lowercased())
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading))
        }
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(zodiac: Zodiac(name: "Aries", imageName: "illustration2", rangingDate: "", tag: 0))
    }
}
