//
//  WeatherData.swift
//  AngelasWeg-Swift
//
//  Created by zineddine on 12/24/20.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable{
    let description: String
}
