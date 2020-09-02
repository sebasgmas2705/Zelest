//
//  Detail.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 2/9/20.
//

import SwiftUI

struct Detail: View {
    
//    @Binding var selected : HoroscopeModel
//    @Binding var show : Bool
//    var animation : Namespace.ID
    
    var prueba: HoroscopeModel = cellsData[0]
    
    var body: some View {
        
        VStack {
        
            ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                
                Image(prueba.image ?? "")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.top)
                    .frame(width: 136 ,height: 143, alignment: .center)
    //                .matchedGeometryEffect(id: selected.img, in: animation)
                
                HStack {
                    
                    Button(action: {
                        
    //                    withAnimation(.spring()){show.toggle()}
                        
                    }) {
                        
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.white)
                            .clipShape(Circle())
                    }
                    
                    Spacer()
                    
                }
                .padding()
                
            }
            
            
            Group {
                
                GeometryReader { geometry in
                    
                    ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
        
                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text(prueba.name ?? "")
                                .font(Font.custom("New York", size: 34))
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.horizontal, 20.0)
                            
                            Text(prueba.dateRange)
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundColor(.secondary)
                           
                            Spacer()
                            
                        }
                        .frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: geometry.size.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.top, 23.0)
            //            .padding(.bottom, 24.0)
                        
                        .background(Color("transparentNavy"))
                        .clipShape(RoundedShape(corners: [.topLeft,.topRight]))
                        
                        
                        
                        VStack {
                            
                            HStack {
                                
                                Button(action: {
                                    
                                }) {
                                    
                                    Text("Summary")
                                        .foregroundColor(.black)
                                        .padding()
                                        .background(Color.white)
                                }
                                .padding(.leading, 64.0)
                                
                                Spacer()
                                
                                Button(action: {
                                    
                                }) {
                                    
                                    Text("Summary")
                                        .foregroundColor(.black)
                                        .padding()
                                        .background(Color.white)
                                }
                                .padding(.trailing, 64.0)
                            }
                            .padding(.top, 46.0)
                            
                            Spacer()
                        }
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: geometry.size.height / 1.3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.white)
                        .clipShape(RoundedShape(corners: [.topLeft,.topRight]))
                    }
                }
            }
        }
        .background(Color.black)
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Detail()
        }
    }
}
