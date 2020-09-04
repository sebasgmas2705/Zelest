//
//  Home.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 1/9/20.
//

import SwiftUI

struct Home: View {
    
    var animation : Namespace.ID
    @Binding var selected : HoroscopePreStatic
    @Binding var apiHoroscope : HoroscopeModel?
    @Binding var show : Bool
    
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(alignment: .leading) {
                
                Text("Your way to the stars")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.secondary)
                    .padding(.leading, 20.0)
                
                Text("Choose your zodiac sign")
                    .font(Font.custom("New York", size: 34))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .padding(.horizontal, 20.0)
                
                ForEach(cellsData) { horoscope in
                    
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
                        
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .stroke(Color.gray.opacity(0.25), lineWidth: 2)
                            .frame(width: .infinity, height: 82)
                            .padding(/*@START_MENU_TOKEN@*/.horizontal, 32.0/*@END_MENU_TOKEN@*/)
                            .padding(.bottom, 42.0)
                        
                        HStack(alignment: .center) {
                            
                            VStack(alignment: .leading, spacing: 1) {
                                
                                Text("Zodiac sign")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                                
                                Text(horoscope.name)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.primary)
                                
                                Text(horoscope.dateRange)
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                            .padding(.leading, 67.0)
                            .padding(.top, 0.0)
                            
                            Spacer()
                            
                            VStack(alignment: .trailing) {
                                Image(horoscope.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 92, height: 88)
                                    .offset(x: 0, y: -15)
                                    .matchedGeometryEffect(id: horoscope.id, in: animation, properties: .frame, isSource: true)
                                
                            }
                            .padding(.trailing, 67.0)
                        }
                    }
                    .onTapGesture {
                        
                        NetworkApi.getHoroscope(sign: horoscope.name) { (horoscopeApi) in
                            
                            withAnimation(.spring()){
                                
                                selected = horoscope
                                apiHoroscope = horoscopeApi
                                show.toggle()
                            }
                        }
                    }
                }
            }
//            .background(Color.black)
//            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkBlue-1"), Color("DarkBlue-2")]), startPoint: .top, endPoint: .bottom))
//                    .background(Color(red: 67 / 255, green: 67 / 255, blue: 67 / 255).edgesIgnoringSafeArea(.top))
//            .background(Color.black.edgesIgnoringSafeArea(.bottom))
        }
//        .preferredColorScheme(.dark)
    }
}

//struct Home_Previews: PreviewProvider {
////    @Namespace var animationa
////    @State var showa = false
////    @State var selecteda : HoroscopeModel = cellsData[0]
//
//
//    static var previews: some View {
//        Home()
//    }
//}
