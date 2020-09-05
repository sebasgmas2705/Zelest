//
//  Planet.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 3/9/20.
//

import SwiftUI
import SceneKit

struct Planet: View {
    
    @Binding var apiHoroscope : HoroscopeModel?
    @Binding var selected : HoroscopePreStatic

    var body: some View {
        
        VStack(alignment: .center, spacing: 12.0) {
            
            // seteamos la escena donde pintar el modelo 3D... por ahora se queda estatico
            SceneView(scene: SCNScene(named:  "Jupiter.usdz"), options: [.autoenablesDefaultLighting, .allowsCameraControl])
            
            // ...y le damos un frame donde el usuario pueda interactuar
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
            Text("Jupiter")
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            
            VStack {
                HStack(alignment: .center, spacing: 12.0) {
                    
                    Image(systemName: "arrow.left")
                        .font(Font.system(.subheadline).bold())
                        .foregroundColor(.gray)
    //                    .opacity(0.5)
                    
                    Image(systemName: "rotate.3d")
                        .font(Font.system(.title3).bold())
                        .foregroundColor(.gray)
    //                    .opacity(0.8)
                    
                    Image(systemName: "arrow.right")
                        .font(Font.system(.subheadline).bold())
                        .foregroundColor(.gray)
    //                    .opacity(0.5)
                }
                
                Text("Swipe to rotate")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                
            }
            .padding(.bottom)
        }
    }
}

//struct Planet_Previews: PreviewProvider {
//    static var previews: some View {
//        Planet()
//    }
//}
