//
//  DetailViewData.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 10/8/20.
//

import SwiftUI

struct DetailViewData: View {
    var body: some View {
      
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 24.0) {
                Spacer()
                
                Button(action: {
               
                }) {
                    Text("HOROSCOPE")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(Color("colorText-Gray"))
                }
                
                Button(action: {
                    
                }) {
                    Text("COMPATIBILITY")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(Color("colorText-Gray"))
                }
                
                Button(action: {
                    
                }) {
                    Text("RULING PLANET")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(Color("colorText-Gray"))
                }
                
                Button(action: {
                    
                }) {
                    Text("GOOD TRAITS")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(Color("colorText-Gray"))
                }
                
                Button(action: {
                    
                }) {
                    Text("BAD TRAITS")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(Color("colorText-Gray"))
                }
                
                Spacer()
            }
        }
    }
}

struct DetailViewData_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewData()
    }
}



struct MenuButton: View {
    var image: String
    var title: String
    var action: () -> Void

    var body: some View {
        VStack {
            Button(action: action){
                    Image(image)
                        .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.template))
                
            }
        }
    }
}
