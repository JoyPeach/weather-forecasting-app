import Foundation

struct TodayWeatherData {
    let weatherDesc: WeatherDescription
    let location: Location
    let icons: [Icons]
}


struct WeatherDescription {
    let temp: Double
    let desc: String
    let humidity: Double
    let rainfall: Double
    let pressure: Double
    let windSpeed: Double
    let windDirection: Double
}

struct Location {
    let latitude: Double
    let longitude: Double
}

struct Icons {
    let weatherIcon: String
    let humidityIcon: String
    let rainfallIcon: String
    let pressureIcon: String
    let windSpeedIcon: String
    let windDirectionIcon: String
}
