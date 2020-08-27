//
//  ViewRouter.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 26/8/20.
//

import SwiftUI
import Combine
import Foundation

class ViewRouter: ObservableObject {
    
//    first element is the data to be passed, second element is a error to handle possible failures
    let objectWillChange = PassthroughSubject<ViewRouter, Never>()
    
    var currentPage: String = "Horoscope" {
        didSet {
            objectWillChange.send(self)
        }
    }
}
