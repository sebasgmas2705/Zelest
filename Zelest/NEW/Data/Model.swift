//
//  Model.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 1/9/20.
//

import Foundation

struct HoroscopeModel: Identifiable, Codable {
    
    var id: UUID? = UUID()
    var currentDate: String
    var compatibility: String
    var luckyTime: String
    var luckyNumber: String
    var color: String
    var dateRange: String
    var mood: String
    var description: String
    
    private enum CodingKeys: String, CodingKey {
        case currentDate = "current_date"
        case compatibility = "compatibility"
        case luckyTime = "lucky_time"
        case luckyNumber = "lucky_number"
        case color = "color"
        case dateRange = "date_range"
        case mood = "mood"
        case description = "description"
    }
}
