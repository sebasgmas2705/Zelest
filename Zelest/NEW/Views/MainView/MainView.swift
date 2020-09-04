//
//  MainView.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 2/9/20.
//

import SwiftUI

struct MainView: View {
    
    @Namespace var animation
    @State var show = false
    @State var selected : HoroscopePreStatic = cellsData[0]
    @State var apiHoroscope : HoroscopeModel?
    
    var body: some View {
        
        ZStack {
            
            Home(animation: animation, selected: $selected, apiHoroscope: $apiHoroscope, show: $show)
            
            if show {
                
                Detail(selected: $selected, apiHoroscope: $apiHoroscope, show: $show, animation: animation)
            }
        }
        .preferredColorScheme(.dark)
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
