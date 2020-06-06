//
//  
//  Meteo
//
//  Created by hicham benhachem FST SETTAT
//  
//

import Foundation

let cli = CLI(input: ProcessInfo().arguments)

guard let args = cli.getArgs() else {
    print(cli.errorMessage)
    print(cli.helpMessage)
    exit(1)
}

let wm = WeatherMan()

if let country = args.country {
    wm.printCurrentWeather(city: args.town,
                           country: country,
                           style: args.style)
} else {
    wm.printCurrentWeather(city: args.town,
                           style: args.style)
}

dispatchMain()
