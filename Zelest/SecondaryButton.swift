//
//  SecondaryButton.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 5/8/20.
//

import SwiftUI

struct SecondaryButton: View {
    var body: some View {
        Button(action: {
            print("BOTON SECUNDARIO")
        }) {
            Text("Don't know your zodiac sign?")
                .font(.subheadline)
                .foregroundColor(Color("PrimaryGray"))
        }
    }
}

struct SecondaryButton_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryButton()
    }
}
