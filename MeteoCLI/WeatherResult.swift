//
//  
//  Meteo
//
//  Created by hicham benhachem FST SETTAT
//  
//

import Foundation

public struct WeatherResult {
    let success: Bool
    let weather: CurrentWeather!
    let error: Error?
}
