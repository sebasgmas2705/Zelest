//
//  HomeView.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 4/8/20.
//

import SwiftUI

struct HomeView: View {
    
    var cells: [Zodiac] = [
        Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "March 19 - April 21"),
        Zodiac(name: "TAURUS", imageName: "illustration3", rangingDate: "March 19 - April 21"),
        Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "March 19 - April 21")
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
                        
                        HStack(spacing: 64) {
                            
                            Button(action: {
                                if selectedPage > 0 {
                                    
                                    withAnimation { selectedPage -= 1 }
                                }
                            }) {
                                Image(systemName: "chevron.left")
                                    .font(Font.system(.title2))
                                    .foregroundColor(Color("PrimaryGrayWOpacity"))
                            }
                            
                            // porque se llama automaticamente ¿?
                            ZodiacDataCell(zodiac: cells[selectedPage])
                            
                            Button(action: {
                                if selectedPage < 2 {
                                    withAnimation { selectedPage += 1 }
                                }
                            }) {
                                Image(systemName: "chevron.right")
                                    .font(Font.system(.title2))
                                    .foregroundColor(Color("PrimaryGrayWOpacity"))
                            }
                            
                        }
                        
                    }
                    
                    VStack(alignment: .center, spacing: 24) {
                        
                        MainButton(zodiac: cells[selectedPage])
                        SecondaryButton()
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
