import Foundation
import UIKit

final class WeatherAPI {
    
    static let shared = WeatherAPI()
    
    func fetchWeatherForecast() {
        let urlString = "https://api.openweathermap.org/data/2.5/forecast?id=629634&appid=6c07d35330426a24f4add8c01609c3b5"
        let url = URL(string: urlString)!
        
        let task = URLSession.shared.dataTask(with: url) { (data, resp, error) in
            
            guard let data = data else {
                print("data was nil")
                return 
            }
            
            guard let weatherForecast = try? JSONDecoder().decode(WeatherForecast.self, from: data) else {
                print("couldn't decode json")
                return
            }
            
            print(weatherForecast.list)
        }
        task.resume()
    }
}

struct WeatherForecast: Codable {
    let list: [WeatherList]
    let city: City
}

struct WeatherList: Codable {
    let main: Main
    let weather: [Weather]
    let wind: Wind
    let rain: Rain
}

struct Main: Codable {
    let temp: Double
    let pressure: Double
    let humidity: Double
}

struct Weather: Codable {
    let main: String
    let description: String
//    let icon: UIImage
}

struct Wind: Codable {
    let speed: Double
    let deg: Double
}

struct Rain: Codable {
    let threeH: Double
}

struct City: Codable {
    let name: String
    let coord: Coordinates
    let country: String
}

struct Coordinates: Codable {
    let lat: Double
    let lon: Double
}

//
//struct Icons {
//    let weatherIcon: String
//    let humidityIcon: String
//    let rainfallIcon: String
//    let pressureIcon: String
//    let windSpeedIcon: String
//    let windDirectionIcon: String
//}
