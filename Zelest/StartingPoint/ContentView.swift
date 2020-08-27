//
//  ContentView.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 3/8/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        DetailView(viewRouter: ViewRouter())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
