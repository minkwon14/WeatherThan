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
        
        // temperature = weatherDictionary[WeatherKeys.temperature] as? Int
        
        if let temperatureDouble = weatherDictionary[WeatherKeys.temperature] as? Double {
            temperature = Int(temperatureDouble)
        } else {
            temperature = nil
        }
        
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
    
    
    
}





