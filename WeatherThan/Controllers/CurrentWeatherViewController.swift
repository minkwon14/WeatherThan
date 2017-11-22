//
//  CurrentWeatherViewController.swift
//  WeatherThan
//
//  Created by Minseo Kwon on 2017-11-21.
//  Copyright © 2017 MinKwon. All rights reserved.
//

import UIKit

class CurrentWeatherViewController: UIViewController {
    
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var temperatureScaleLabel: UILabel!
    
    let forecastAPIKey = "bfda986300c149d1785e462815e03e92"
    let coordinate: (lat: Double, long: Double) = (37.8267,-122.4233)
    var jsonParser: JSONparser!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print ("App has been started")
        
        jsonParser = JSONparser(APIKey: forecastAPIKey)
        jsonParser.getCurrentWeather(latitude: coordinate.lat, longitude: coordinate.long) { (currentWeather) in
                if let currentWeather = currentWeather {
                    DispatchQueue.main.async {
                        if let temperature = currentWeather.temperature {
                            self.temperatureLabel.text = "\(temperature)°"
                            print ("Data has been loaded")
                        } else {
                            self.temperatureLabel.text = "-"
                            print ("Cannot Load Data")
                        }
                }
            }
        }
    }


}
