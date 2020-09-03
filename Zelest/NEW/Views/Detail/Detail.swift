//
//  Detail.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 2/9/20.
//

import SwiftUI

struct Detail: View {
    
    @Binding var selected : HoroscopeModel
    @Binding var show : Bool
    var animation : Namespace.ID
    
    @State var isSummary: Bool = true
    
    
    
    var prueba: HoroscopeModel = cellsData[0]
    
    var body: some View {
        
        VStack {
        
            ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                
                Image(prueba.image ?? "")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.top)
                    .frame(width: 136 ,height: 143, alignment: .center)
                    .matchedGeometryEffect(id: selected.id, in: animation, properties: .frame)
                
                HStack {
                    
                    Button(action: {
                        
                        withAnimation(.spring()){ show.toggle() }
                        
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
        
                        VStack(alignment: .center, spacing: 12) {
                            
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
                        
                        
                        
                        VStack(alignment: .center, spacing: 44.0) {
                            
                            HStack {
                                
                                Button(action: {
                                    withAnimation(.spring()){ isSummary = true }
                                }) {
                                    
                                    Text("Summary")
                                        .foregroundColor(.black)
                                        .padding()
                                        .background(Color.white)
                                }
                                .padding(.leading, 64.0)
                                
                                Spacer()
                                
                                Button(action: {
                                    withAnimation(.spring()){ isSummary = false }
                                }) {
                                    
                                    Text("Summary")
                                        .foregroundColor(.black)
                                        .padding()
                                        .background(Color.white)
                                }
                                .padding(.trailing, 64.0)
                            }
                            .padding(.top, 46.0)
                            
                            if isSummary {
//                               Summary()

                                Summary(selected: $selected, show: $show, animation: animation)
                            } else {
                                
                                Planet()
                            }
                            
                            
                            
//                            ScrollView {
//                                HStack(alignment: .center, spacing: 24.0) {
//
//                                    VStack {
//
//                                        Text("Compatibility")
//                                            .font(.headline)
//                                            .fontWeight(.semibold)
//                                            .foregroundColor(.primary)
//
//                                        Image(prueba.image ?? "")
//                                            .resizable()
//                                            .frame(width: 69, height: 70, alignment: .center)
//
//                                        Text(prueba.name ?? "")
//                                            .font(.footnote)
//                                            .fontWeight(.light)
//                                            .foregroundColor(.secondary)
//                                    }
//
//                                    VStack(spacing: 12.0) {
//
//                                        VStack {
//
//                                            Text("Color")
//                                                .font(.footnote)
//                                                .fontWeight(.light)
//                                                .foregroundColor(.primary)
//
//                                            Circle()
//                                                .frame(width: 30, height: 30, alignment: .center)
//                                        }
//
//                                        VStack {
//
//                                            Text("Lucky time")
//                                                .font(.footnote)
//                                                .fontWeight(.light)
//                                                .foregroundColor(.primary)
//
//                                            Text(prueba.luckyTime ?? "7 AM")
//                                                .font(.body)
//                                                .fontWeight(.semibold)
//                                                .foregroundColor(.primary)
//                                        }
//                                    }
//
//                                    VStack(spacing: 32.0) {
//
//                                        VStack {
//
//                                            Text("Mood")
//                                                .font(.footnote)
//                                                .fontWeight(.light)
//                                                .foregroundColor(.primary)
//
//                                            Text(prueba.mood ?? "Relaxed")
//                                                .font(.body)
//                                                .fontWeight(.semibold)
//                                                .foregroundColor(.primary)
//                                        }
//
//
//
//                                        VStack {
//
//                                            Text("Lucky number")
//                                                .font(.footnote)
//                                                .fontWeight(.light)
//                                                .foregroundColor(.primary)
//
//                                            Text(prueba.luckyTime ?? "64")
//                                                .font(.body)
//                                                .fontWeight(.semibold)
//                                                .foregroundColor(.primary)
//                                        }
//                                    }
//                                }
//
//
//                                VStack(alignment: .leading, spacing: 12.0) {
//
//                                    Text("Description")
//                                        .font(.headline)
//                                        .fontWeight(.semibold)
//                                        .foregroundColor(.primary)
//
//
//
//                                    Text(prueba.description ?? "It's finally time for you to think about just one thing: what makes you happy. Fortunately, that happens to be a person who feels the same way. Give yourself the evening off. Refuse to be put in charge of anything.")
//                                        .font(.body)
//                                        .fontWeight(.regular)
//                                        .foregroundColor(.primary)
//
//
//                                    Spacer()
//                                }
//                                .padding(.horizontal, 24.0)
//
//                            }
                        }
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: geometry.size.height / 1.3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.white)
                        .clipShape(RoundedShape(corners: [.topLeft,.topRight]))
                        
                    }
                }
            }
            .edgesIgnoringSafeArea(.bottom)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

//struct Detail_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            Detail()
//        }
//    }
//}
