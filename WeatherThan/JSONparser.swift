//
//  JSONparser.swift
//  WeatherThan
//
//  Created by Minseo Kwon on 2017-11-21.
//  Copyright © 2017 MinKwon. All rights reserved.
//

import Foundation
import Alamofire

class JSONparser {
    
    // sample https://api.darksky.net/forecast/bfda986300c149d1785e462815e03e92/37.8267,-122.4233
    let forecastAPIKey: String
    let forecastBaseURL: URL?
    
    init(APIKey: String) {
        
        self.forecastAPIKey = APIKey
        forecastBaseURL = URL(string: "https://api.darksky.net/forecast/\(APIKey)")
    }
    
    func getCurrentWeather(latitude: Double, longitude: Double) -> CurrentWeather {
        
        if let forecastURL = URL(string: "\(forecastBaseURL!)/\(latitude),\(longitude)") {
            Alamofire.request(forecastURL).responseJSON(completionHandler: { (response) in
                if let jsonDictionary = response.result.value as? [String : Any] {
                    if let currentWeatherDictionary = jsonDictionary["Currently"] as? [String : Any]{
                        let currentWeather = CurrentWeather(weatherDictionary: currentWeatherDictionary)
                        
                    }
                }
            })
        }
        
        
    }
    
    
}


