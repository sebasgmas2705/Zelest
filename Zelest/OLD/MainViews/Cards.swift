//
//  Cards.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 29/8/20.
//

import SwiftUI

struct Cards: View {
    var cells: [Zodiac] = [
        Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "March 19 - April 21", tag: 0),
        Zodiac(name: "TAURUS", imageName: "illustration3", rangingDate: "March 19 - April 21", tag: 1),
        Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "March 19 - April 21", tag: 2)
    ]
    
    @State var selectedPage = 0
    
    @Binding var isShow: Bool
    
    var body: some View {
        
        ZStack {

            VStack {
                
                    TabView(selection: $selectedPage) {
                        
                        ZodiacCell(zodiac: cells[0]).tag(0)
                        ZodiacCell(zodiac: cells[1]).tag(1)
                        ZodiacCell(zodiac: cells[2]).tag(2)
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    
                HStack(spacing: 32.0) {
                    
                    if !isShow {
                    
                    Button(action: {
                        if selectedPage > 0 {
                            
                            withAnimation {
                                selectedPage -= 1 
                                
                            }
                        }
                    }) {
                        Image(systemName: "chevron.left")
                            .font(Font.system(.title2))
                            .foregroundColor(Color("PrimaryGrayWOpacity"))
                    }
                    }
                    
                    ZodiacDataCell(zodiac: cells[selectedPage])
                    
                    if !isShow {
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
            }
        }
        .padding(/*@START_MENU_TOKEN@*/.all, 24.0/*@END_MENU_TOKEN@*/)
        
        
    }
}

struct Cards_Previews: PreviewProvider {
    
    @State static var myCoolBool = true
    
    static var previews: some View {
        Cards(isShow: $myCoolBool)
    }
}
