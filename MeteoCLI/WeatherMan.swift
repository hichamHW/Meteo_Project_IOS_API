//
//  
//  Meteo
//
//  Created by hicham benhachem FST SETTAT
//  
//


import Foundation

public class WeatherMan {
    
    private let meteo: Meteo
    private let descriptor: WeatherDescriptor
    
    public init(id: String = "d21991d7851f849bfe8cc24d12c795d0") {
        meteo = Meteo(appID: id)
        descriptor = WeatherDescriptor()
    }
    
    public func printCurrentWeather(city: String,
                                    country code: String? = nil,
                                    style: WeatherDescriptionStyle = .detailedString) {
        meteo.currentWeather(city: city, country: code) { (result) in
            if result.success {
                self.descriptor.describe(weather: result.weather, style: style)
                exit(0)
            } else if let error = result.error {
                print(error)
                exit(1)
            } else {
                print("Unknown error")
                exit(1)
            }
        }
    }
}
