//
//  CurrentWeather.swift
//  WeatherThan
//
//  Created by Minseo Kwon on 2017-11-21.
//  Copyright © 2017 MinKwon. All rights reserved.
//

import Foundation

class CurrentWeather {
    
    let temperature: Int?
    let precipProbability: Int?
    let humidity: Int?
    let windSpeed: Int?
    let summary: String?
    let icon: String?
    
    
    // Create structure as WeatherKeys
    struct WeatherKeys {
        
        static let temperature = "temperature"
        static let precipProbability = "precipProbability"
        static let humidity = "humidity"
        static let windSpeed = "windSpeed"
        static let summary = "summary"
        static let icon = "icon"
        
    }
    
    // Initialize weather dictionary
    init(weatherDictionary: [String : Any]){
        
        temperature = weatherDictionary[WeatherKeys.temperature] as? Int
        
        if let humidityDouble = weatherDictionary[WeatherKeys.humidity] as? Double {
            humidity = Int(humidityDouble * 100)
        } else {
            humidity = nil
        }
        
        if let precipDouble = weatherDictionary[WeatherKeys.precipProbability] as? Double {
            precipProbability = Int(precipDouble * 100)
        } else {
            precipProbability = nil
        }
        
        if let windSpeedDouble = weatherDictionary[WeatherKeys.windSpeed] as? Double {
            windSpeed = Int(windSpeedDouble * 100)
        } else {
            windSpeed = nil
        }
        
        summary = weatherDictionary[WeatherKeys.summary] as? String
        icon = weatherDictionary[WeatherKeys.icon] as? String
        
        
        
    }
    
    /*
    "time": 1511319230,
    "summary": "Clear",
    "icon": "clear-night",
    "nearestStormDistance": 2,
    "nearestStormBearing": 180,
    "precipIntensity": 0,
    "precipProbability": 0,
    "temperature": 60.23,
    "apparentTemperature": 60.23,
    "dewPoint": 54.93,
    "humidity": 0.83,
    "pressure": 1019.67,
    "windSpeed": 1.82,
    "windGust": 4.72,
    "windBearing": 28,
    "cloudCover": 0.21,
    "uvIndex": 0,
    "visibility": 10,
    "ozone": 242.89
    */
    
}





