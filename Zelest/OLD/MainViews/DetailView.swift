//
//  DetailView.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 9/8/20.
//

import SwiftUI

struct DetailView: View {
    
    let z = Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "March 19 - April 21", tag: 0)
    
    @State var page = "Horoscope"
    
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        
        VStack {
//
//            GeometryReader { geometry in
//
//                VStack {
//
//                    ZStack {
//
//                        Background()
//                            .edgesIgnoringSafeArea(.top)
//
//
//                        VStack {
//
////                            HomeView()
////
//                            ZodiacCell(zodiac: z)
//
//                            ZodiacDataCell(zodiac: z)
//                                .padding(.bottom, 24.0)
//                        }
//                        .padding(.bottom)
//                    }
//
//                    .frame(width: .infinity, height: geometry.size.height / 1.7)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 24.0) {
                            Spacer()

                            Button(action: {
                                viewRouter.currentPage = "Horoscope"
                            }) {
                                Text("HOROSCOPE")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("colorText-Gray"))
                            }

                            Button(action: {
                                viewRouter.currentPage = "Compatibility"
                            }) {
                                Text("COMPATIBILITY")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("colorText-Gray"))
                            }

                            Button(action: {
                                viewRouter.currentPage = "Ruling"
                            }) {
                                Text("RULING PLANET")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("colorText-Gray"))
                            }

                            Button(action: {
                                viewRouter.currentPage = "Good"
                            }) {
                                Text("GOOD TRAITS")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("colorText-Gray"))
                            }

                            Button(action: {
                                viewRouter.currentPage = "Bad"
                            }) {
                                Text("BAD TRAITS")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("colorText-Gray"))
                            }

                            Spacer()
                        }
                    }
                    .padding(.bottom, 24.0)



                    if viewRouter.currentPage == "Horoscope" {

                        HoroscopeSubview()
                            .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)

                    } else if viewRouter.currentPage == "Compatibility" {

                        CompatibilitySubview()

                    } else if viewRouter.currentPage == "Ruling" {
                        RulingPlanetSubview()
                    }
//                }
//            }
        }


//        .background(LinearGradient(gradient: Gradient(colors: [Color("DarkBlue-1"), Color("DarkBlue-2")]), startPoint: .top, endPoint: .bottom))
//        .background(Color("DarkBlue-1").edgesIgnoringSafeArea(.top))
//        .background(Color("DarkBlue-2").edgesIgnoringSafeArea(.bottom))

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(viewRouter: ViewRouter())
    }
}
