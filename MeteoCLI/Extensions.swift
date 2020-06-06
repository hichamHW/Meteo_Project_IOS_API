//
//  
//  Meteo
//
//  Created by hicham benhachem FST SETTAT
//  
//

import Foundation

public extension String {
    func percentEncoded() -> String? {
        return self.addingPercentEncoding(
            withAllowedCharacters: CharacterSet.urlQueryAllowed
        )
    }
}

public extension Double {
    func roundedOneDecimal() -> Double {
        return (self * 10.0).rounded() / 10.0
    }
}

public extension Int {
    func degreesToCompass() -> String {
        let compass = ["N","NNE","NE","ENE","E","ESE","SE","SSE","S","SSO","SO","OSO","O","ONO","NO","NNO"]
        let index = Int((Double(self) / 22.5) + 0.5) % 16
        return compass[index]
    }
}
