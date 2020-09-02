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
    @State var selected : HoroscopeModel = cellsData[0]
    
    var body: some View {
        
        VStack {
            Home(animation: animation, selected: $selected, show: $show)
            
            if show {
                Detail()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
