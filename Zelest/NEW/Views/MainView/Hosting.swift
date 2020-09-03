//
//  Hosting.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 3/9/20.
//

import SwiftUI

class HostingController<ContentView>: UIHostingController<ContentView> where ContentView : View {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
