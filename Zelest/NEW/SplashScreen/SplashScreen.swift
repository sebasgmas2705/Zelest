//
//  SplashScreen.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 4/9/20.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
            
            if self.isActive {
                MainView()
                
            } else {
                
                VStack(alignment: .center) {
                    HStack(alignment: .center) {
                        Image("splashLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }
            }
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color.black.edgesIgnoringSafeArea(.vertical))
        .onAppear {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
