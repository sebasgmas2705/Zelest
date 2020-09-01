//
//  FirstScreenCard.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 30/8/20.
//

import SwiftUI

struct FirstScreenCard: View {
    
    var cells: [Zodiac] = [
        Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "March 19 - April 21", tag: 0),
        Zodiac(name: "TAURUS", imageName: "illustration3", rangingDate: "March 19 - April 21", tag: 1),
        Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "March 19 - April 21", tag: 2)
    ]
    
    @State var selectedPage = 0
    
    @State var showMiniature = false
    
    @ObservedObject var viewRouter: ViewRouter
    
    @Namespace var nspace
    
    var body: some View {
    
        GeometryReader { geometry in
            
            ZStack {
                
                //----------------------------------------------------------------
                //MARK: VStack para los elementos de atras
                VStack {
                    //dejamos espacio en la parte de arriba
                    Spacer()
                    
                    DetailView(page: "Horoscope", viewRouter: viewRouter)
                }
                //----------------------------------------------------------------
                
                
                
                //----------------------------------------------------------------
                //MARK: VStack de la carta principal
                VStack {
                    
                    CardFull(cells: cells, selectedPage: selectedPage)
                        .matchedGeometryEffect(id: "effect1", in: nspace, properties: .size)
                    
                    if showMiniature {
                        CardMiniature(zodiac: cells[selectedPage])
                            .matchedGeometryEffect(id: "effect1", in: nspace, isSource: false)
                    }
                    
//                    if !showMiniature {
//                        CardFull(cells: cells, selectedPage: selectedPage)
//                            .matchedGeometryEffect(id: "effect1", in: nspace, isSource: true)
//                    } else {
//                        CardMiniature(zodiac: cells[selectedPage])
//                            .matchedGeometryEffect(id: "effect1", in: nspace)
//                    }
                }
                
                .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                    withAnimation {
                        showMiniature.toggle()
                    }
                })
                
                
                //----------------------------------------------------------------
                
                
                
                //----------------------------------------------------------------
                //MARK:
                
                
            }
            
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color("DarkBlue-1"), Color("DarkBlue-2")]), startPoint: .top, endPoint: .bottom))
        .background(Color("DarkBlue-1").edgesIgnoringSafeArea(.top))
        .background(Color("DarkBlue-2").edgesIgnoringSafeArea(.bottom))
    }
}

struct FirstScreenCard_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreenCard(viewRouter: ViewRouter())
    }
}
