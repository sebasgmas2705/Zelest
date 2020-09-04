//
//  Summary.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 3/9/20.
//

import SwiftUI

struct Summary: View {
    
    @Binding var apiHoroscope : HoroscopeModel?
    @Binding var selected : HoroscopePreStatic
    @Binding var show : Bool
    var animation : Namespace.ID
    
    var body: some View {
        
        if let horoscope = apiHoroscope {
            
            ScrollView {
                HStack(alignment: .center, spacing: 24.0) {
                    
                    VStack {
                        
                        Text("Compatibility")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                        
                        Image(horoscope.compatibility.lowercased())
                            .resizable()
                            .frame(width: 69, height: 70, alignment: .center)
                        
                        Text(horoscope.compatibility)
                            .font(.footnote)
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                    }
                    
                    VStack(spacing: 12.0) {
                        
                        VStack {
                            
                            Text("Color")
                                .font(.footnote)
                                .fontWeight(.light)
                                .foregroundColor(.black)
                            
                            Circle()
                                .fill(Zelest.randomColor())
                                .frame(width: 30, height: 30, alignment: .center)
                        }
                        
                        VStack {
                            
                            Text("Lucky time")
                                .font(.footnote)
                                .fontWeight(.light)
                                .foregroundColor(.black)
                            
                            Text(horoscope.luckyTime)
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                        }
                    }
                    
                    VStack(spacing: 32.0) {
                        
                        VStack {
                            
                            Text("Mood")
                                .font(.footnote)
                                .fontWeight(.light)
                                .foregroundColor(.black)
                            
                            Text(horoscope.mood)
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                        }
                        
                        VStack {
                            
                            Text("Lucky number")
                                .font(.footnote)
                                .fontWeight(.light)
                                .foregroundColor(.black)
                            
                            Text(horoscope.luckyNumber)
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                        }
                    }
                }
                
                
                VStack(alignment: .leading, spacing: 12.0) {
                    
                    Text("Description")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                    Text(horoscope.description)
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                    
                    
                    Spacer()
                }
                .padding(.horizontal, 24.0)
                
            }
        }
    }
}

func randomColor() -> Color {
    
    let rand1 = Double.random(in: 0...255)
    let rand2 = Double.random(in: 0...255)
    let rand3 = Double.random(in: 0...255)
    
    return Color(red: rand1 / 255, green: rand2 / 255, blue: rand3 / 255, opacity: 1.0)
}
//
//struct Summary_Previews: PreviewProvider {
//    static var previews: some View {
//        Summary()
//    }
//}
