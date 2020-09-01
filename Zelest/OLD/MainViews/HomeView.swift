//
//  HomeView.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 4/8/20.
//

import SwiftUI

struct HomeView: View {
    
    var cells: [Zodiac] = [
        Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "March 19 - April 21", tag: 0),
        Zodiac(name: "TAURUS", imageName: "illustration3", rangingDate: "March 19 - April 21", tag: 1),
        Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "March 19 - April 21", tag: 2)
    ]
    
    @State var selectedPage = 0
    
    @State var show = false
    
    @Namespace var namespace
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                
                if !show {
                    Text("Choose your zodiac sign")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                }
                
                ZStack {
                    
                    Cards(isShow: $show)
                        .matchedGeometryEffect(id: "Card", in: namespace, isSource: !show)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: geometry.size.height, alignment: .top)
                
                    if show {
                        
                        ZStack {
                            Background()
                                .edgesIgnoringSafeArea(.top)
                            VStack {
                                Cards(isShow: $show)
                                    .disabled(true)
                                    .matchedGeometryEffect(id: "Card", in: namespace)
                                    .frame(width: geometry.size.width, height: geometry.size.height / 1.6, alignment: .top)
                                
                            }
                        }
                        .transition(
                            .asymmetric(
                                insertion: AnyTransition.opacity.animation(Animation.spring().delay(0.3)),
                                removal: AnyTransition.opacity.animation(Animation.spring())
                            )
                        )
                    }
                    
                }
                .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                    withAnimation {
                        show.toggle()
                    }
                })
                
                if !show {
                    VStack {
                        MainButton(zodiac: cells[selectedPage])
                        SecondaryButton()
                    }
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/ , maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: geometry.size.height / 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .transition(
                        .asymmetric(
                            insertion: AnyTransition.opacity.animation(Animation.spring().delay(0.4)),
                            removal: AnyTransition.opacity.animation(Animation.spring())
                        )
                    )
                } else {
                    VStack {
                    DetailView(page: "Horoscope", viewRouter: viewRouter)
                    }
                        .transition(
                            .asymmetric(
                                insertion: AnyTransition.opacity.animation(Animation.spring().delay(0.4)),
                                removal: AnyTransition.opacity.animation(Animation.spring())
                            )
                        )
                }
                
            }
        }
        
        
        .background(LinearGradient(gradient: Gradient(colors: [Color("DarkBlue-1"), Color("DarkBlue-2")]), startPoint: .top, endPoint: .bottom))
        .background(Color("DarkBlue-1").edgesIgnoringSafeArea(.top))
        .background(Color("DarkBlue-2").edgesIgnoringSafeArea(.bottom))
        
        
        //                .background(Image("illustration1")
        //                                .resizable()
        //                                .edgesIgnoringSafeArea(.all)
        //                                .aspectRatio(contentMode: .fill)
        //                )
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewRouter: ViewRouter())
    }
}
