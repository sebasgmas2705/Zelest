//
//  DetailView.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 9/8/20.
//

import SwiftUI

struct DetailView: View {
    
    let z = Zodiac(name: "ARIES", imageName: "illustration2", rangingDate: "March 19 - April 21")
    
    @State var page = "Horoscope"
    
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        
        VStack {
            
            GeometryReader { geometry in
                VStack {
                    HStack {
                        VStack {
                            
                            ZodiacCell(zodiac: z)
                            
                            ZodiacDataCell(zodiac: z)
                            
                        }
                        .frame(width: geometry.size.width, height: geometry.size.height / 2, alignment: .center)
                        .padding(.bottom)
                        
                    }
                    .background(Image("illustration1")
                                    .resizable()
                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top))
                    
                    .mask(CustomShape(radius: 48))
                    .shadow(color: .black, radius: 24, x: 0, y: 1)
                    .padding(.bottom)
                    
                    
                    
                    
                    
                    
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
                    } else if viewRouter.currentPage == "Compatibility" {
                        
                        CompatibilitySubview()
                    }
                    
                }
            }
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("DarkBlue-1"), Color("DarkBlue-2")]), startPoint: .top, endPoint: .bottom)
        )
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(viewRouter: ViewRouter())
    }
}
