//
//  Network.swift
//  Zelest
//
//  Created by Sebastián Miguel Gelabert Mas on 1/9/20.
//

import Foundation

class NetworkAPI {
    
    func fetchHoroscope(sign: String, completion: @escaping (Horoscope) -> ()) {
        
        //TODO: pass sign data to API's url
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
