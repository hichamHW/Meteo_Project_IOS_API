//
//  
//  Meteo
//
//  Created by hicham benhachem FST SETTAT
//  
//


import Foundation

public struct CurrentWeather {
    typealias MeterSecond = Double
    typealias KMHour = Double
    typealias MeteorologicalDegree = Int
    
    let date: Date
    let city: String
    let country: String
    let celsius: Int
    let category: String
    let subCategory: String
    let windSpeed: MeterSecond
    let windDirection: MeteorologicalDegree?
    let iconURL: URL
    
    var windSpeedKMH: KMHour {
        let s = windSpeed * 3.6
        return s.roundedOneDecimal()
    }
}
