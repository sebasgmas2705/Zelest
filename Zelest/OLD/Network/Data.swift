//
//  Data.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 28/8/20.
//

import SwiftUI

struct Horoscope: Identifiable, Codable {
    
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

class Api {
    
    func getHoroscope(sing: String, completion: @escaping (Horoscope) -> ()) {
        
        guard let url = URL(string: "https://aztro.sameerkumar.website/?sign=aries&day=today") else { return }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            
            if let data = data {
                guard let horoscope = try? JSONDecoder().decode(Horoscope.self, from: data) else { return }
                
                debugPrint(horoscope)
                
                DispatchQueue.main.async {
                    completion(horoscope)
                }
                
            } else {
                print("vacio")
            }
        }.resume()
    }
}
