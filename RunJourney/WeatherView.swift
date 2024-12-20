//
//  WeatherView.swift
//  RunJourney
//
//  Created by Student on 12/5/23.
//

import Foundation
import SwiftUI

struct WeatherView: View {
    @State private var weatherData: WeatherData?
    
    @ObservedObject var getLocation = GetLocation()
    
    //Display weather data
    var body: some View {
        VStack {
            if let weather = weatherData {
                Text("Temperature: \(weather.main.temp) °F")
                Text("Description: \(weather.weather.first?.description ?? "")")
            }
            else {
                ProgressView()
            }
            
        }
        .padding()
        .navigationTitle("Weather Information")
        .onAppear {
            fetchWeatherData()
        }
    }
    
    //fetch data from openWeather
    func fetchWeatherData() {
        let API_KEY: String = "117645214ea82b62842c3ef409f567e1"
        
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(getLocation.lat)&lon=\(getLocation.lon)&units=imperial&appid=\(API_KEY)") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) {data, response, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let weather = try decoder.decode(WeatherData.self, from: data)
                
                DispatchQueue.main.async {
                    self.weatherData = weather
                }
            } catch {
                print("Error decoding")
            }
        }.resume()
    }
}

struct WeatherData: Codable {
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
}
