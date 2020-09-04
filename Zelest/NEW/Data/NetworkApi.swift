//
//  NetworkApi.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 4/9/20.
//

import Foundation

class NetworkApi {
    
    public static func getHoroscope(sign: String, completion: @escaping (HoroscopeModel) -> ()) {
        
        guard let url = URL(string: "https://aztro.sameerkumar.website/?sign=\(sign)&day=today") else { return }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            
            if let data = data {
                guard let horoscope = try? JSONDecoder().decode(HoroscopeModel.self, from: data) else { return }
                
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
