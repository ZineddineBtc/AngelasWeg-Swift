//
//  WeatherManager.swift
//  AngelasWeg-Swift
//
//  Created by zineddine on 12/23/20.
//

import Foundation
struct WeatherManager{
    let key = "0959d34037b8268d2f387792c40cd280"
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=0959d34037b8268d2f387792c40cd280&units=metric"
    
    func fetchWeather(cityName: String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url, completionHandler: handler(data:response:error:))
            task.resume()
        }
    }
    
    func handler(data: Data?, response: URLResponse?, error: Error?){
        if error != nil {
            print(error!)
            return
        }
        if let safeData = data {
            parseJSON(weatherData: safeData)
        }
    }
    func parseJSON(weatherData: Data){
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.main.temp)
        }catch{
            print(error)
        }
    }
}
