//
//  HomeView.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 4/8/20.
//

import SwiftUI

struct HomeView: View {
    
    @State private var currentText = ""
    
    var cells: [Zodiac] = [
        Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "..."),
        Zodiac(name: "TAURUS", imageName: "illustration3", rangingDate: "..."),
        Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "...")
    ]
    
    @State var selectedPage = 0
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
            
                VStack(spacing: 64) {
                    
                    Text("Choose your zodiac sign")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    VStack {
                        TabView(selection: $selectedPage) {
                            
                            ZodiacCell(zodiac: cells[0]).tag(0)
                            ZodiacCell(zodiac: cells[1]).tag(1)
                            ZodiacCell(zodiac: cells[2]).tag(2)
                        }
                        .frame(width: UIScreen.main.bounds.width, height: 376)
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        
                        
                        ZodiacDataCell(zodiac: cells[0])
                        
                    }
                    
                    VStack(alignment: .center, spacing: 24) {
                        
                        HStack {
                                        Button("<") { if selectedPage > 0 {
                                            withAnimation { selectedPage -= 1 }
                                        } }
                                        Spacer().frame(width: 40)
                                        Button(">") { if selectedPage < 2 {
                                            withAnimation { selectedPage += 1 }
                                        } }
                                    }
                        
                        Button(action: {
                            //accion que ha de llevar a cabo el boton
                            print("BOTON PRINCIPAL")
                        }) {

                            RoundedRectangle(cornerRadius: 16, style: .continuous)
                                .frame(width: 288.0, height: 46.0)
                                .foregroundColor(Color("AccentColor"))
                                .overlay(Text("Choose Aries")
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.white))
                        }
                        Button(action: {
                            print("BOTON SECUNDARIO")
                        }) {
                            Text("Don't know your zodiac sign?")
                                .font(.subheadline)
                        }
                    }
                }
//                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
            }
            
        }
        .background(Image("illustration1")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .aspectRatio(contentMode: .fill)
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
