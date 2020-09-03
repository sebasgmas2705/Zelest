//
//  Model.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 1/9/20.
//

import Foundation

struct PlanetModel: Identifiable {
    
    var id: UUID = UUID()
    var modelName: String
    var name: String
}

struct HoroscopeModel: Identifiable, Codable {
    
    var id: UUID? = UUID()
    var name: String?
    var currentDate: String?
    var compatibility: String?
    var luckyTime: String?
    var luckyNumber: String?
    var color: String?
    var dateRange: String
    var mood: String?
    var description: String?
    var image: String?
    
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

var cellsData = [

    HoroscopeModel(id: UUID(), name: "Taurus", currentDate: nil, compatibility: nil, luckyTime: nil, luckyNumber: nil, color: nil, dateRange: "April 20 - May 20", mood: nil, description: nil, image: "taurus"),
    HoroscopeModel(id: UUID(), name: "Virgo", currentDate: nil, compatibility: nil, luckyTime: nil, luckyNumber: nil, color: nil, dateRange: "Aug 23 - Sep 22", mood: nil, description: nil, image: "virgo"),
    HoroscopeModel(id: UUID(), name: "Gemini", currentDate: nil, compatibility: nil, luckyTime: nil, luckyNumber: nil, color: nil, dateRange: "May 21 - Jun 20", mood: nil, description: nil, image: "gemini"),
    HoroscopeModel(id: UUID(), name: "Cancer", currentDate: nil, compatibility: nil, luckyTime: nil, luckyNumber: nil, color: nil, dateRange: "Jun 21 - Jul 22", mood: nil, description: nil, image: "cancer"),
    HoroscopeModel(id: UUID(), name: "Aries", currentDate: nil, compatibility: nil, luckyTime: nil, luckyNumber: nil, color: nil, dateRange: "Mar 21 - Apr 19", mood: nil, description: nil, image: "aries"),
    HoroscopeModel(id: UUID(), name: "Leo", currentDate: nil, compatibility: nil, luckyTime: nil, luckyNumber: nil, color: nil, dateRange: "Jul 23 - Aug 22", mood: nil, description: nil, image: "leo"),
    HoroscopeModel(id: UUID(), name: "Libra", currentDate: nil, compatibility: nil, luckyTime: nil, luckyNumber: nil, color: nil, dateRange: "Sep 23 - Oct 22", mood: nil, description: nil, image: "libra"),
    HoroscopeModel(id: UUID(), name: "Scorpio", currentDate: nil, compatibility: nil, luckyTime: nil, luckyNumber: nil, color: nil, dateRange: "Oct 23 - Nov 21", mood: nil, description: nil, image: "scorpio"),
    HoroscopeModel(id: UUID(), name: "Sagittarius", currentDate: nil, compatibility: nil, luckyTime: nil, luckyNumber: nil, color: nil, dateRange: "Nov 22 - Dec 21", mood: nil, description: nil, image: "sagittarius"),
    HoroscopeModel(id: UUID(), name: "Capricorn", currentDate: nil, compatibility: nil, luckyTime: nil, luckyNumber: nil, color: nil, dateRange: "Dec 22 - Jan 19", mood: nil, description: nil, image: "capricorn"),
    HoroscopeModel(id: UUID(), name: "Pisces", currentDate: nil, compatibility: nil, luckyTime: nil, luckyNumber: nil, color: nil, dateRange: "Feb 19 - Mar 20", mood: nil, description: nil, image: "pisces"),
    HoroscopeModel(id: UUID(), name: "Aquarius", currentDate: nil, compatibility: nil, luckyTime: nil, luckyNumber: nil, color: nil, dateRange: "Jan 20 - Feb 18", mood: nil, description: nil, image: "aquarius")
]
