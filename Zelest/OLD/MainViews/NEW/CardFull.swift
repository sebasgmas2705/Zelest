//
//  CardFull.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 30/8/20.
//

import SwiftUI

struct CardFull: View {
    
    var cells: [Zodiac] = [
        Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "March 19 - April 21", tag: 0),
        Zodiac(name: "TAURUS", imageName: "illustration3", rangingDate: "March 19 - April 21", tag: 1),
        Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "March 19 - April 21", tag: 2)
    ]
    
    @State var selectedPage = 0
    
    var body: some View {
        
        GeometryReader { geometry in
        
            VStack {
                
                Text("Choose your zodiac sign")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                
                TabView(selection: $selectedPage) {
                    
                    ForEach(cells) { item in
                        ZodiacCell(zodiac: item).tag(item.tag)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
                
                
                //HStack para los botones e informacion
                HStack {
                    
                    Button(action: {
                        if selectedPage > 0 { withAnimation { selectedPage -= 1 } }
                    }) {
                        Image(systemName: "chevron.left")
                            .font(Font.system(.title2))
                            .foregroundColor(Color("PrimaryGrayWOpacity"))
                    }
                    
                    ZodiacDataCell(zodiac: cells[selectedPage])
                    
                    Button(action: {
                        if selectedPage < 2 { withAnimation { selectedPage += 1 } }
                    }) {
                        Image(systemName: "chevron.right")
                            .font(Font.system(.title2))
                            .foregroundColor(Color("PrimaryGrayWOpacity"))
                    }
                }
                
                VStack {
                    MainButton(zodiac: cells[selectedPage])
                    SecondaryButton()
                }
                .padding(/*@START_MENU_TOKEN@*/.vertical, 24.0/*@END_MENU_TOKEN@*/)
                
            }
            .frame(minWidth: 0, maxWidth: geometry.size.width, minHeight: 0, maxHeight: geometry.size.height, alignment: .top)
            
            .background(Image("illustration1")
                            .resizable()
                            .edgesIgnoringSafeArea(.vertical)
                            .aspectRatio(contentMode: .fill) )
        }
    }
}

struct CardFull_Previews: PreviewProvider {
    static var previews: some View {
        CardFull()
    }
}
