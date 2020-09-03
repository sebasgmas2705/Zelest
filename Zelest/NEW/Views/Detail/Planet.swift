//
//  Planet.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 3/9/20.
//

import SwiftUI
import SceneKit

struct Planet: View {
    var body: some View {
        
        VStack {
            
            // seteamos la escena donde pintar el modelo 3D...
            SceneView(scene: SCNScene(named:  "Jupiter.usdz"), options: [.autoenablesDefaultLighting, .allowsCameraControl])
            
            // ...y le damos un frame donde el usuario pueda interactuar
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
        }
    }
}

struct Planet_Previews: PreviewProvider {
    static var previews: some View {
        Planet()
    }
}
