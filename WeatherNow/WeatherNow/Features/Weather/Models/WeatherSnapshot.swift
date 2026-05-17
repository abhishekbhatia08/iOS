import Foundation

struct WeatherSnapshot {
    let city: String
    let dateText: String
    let condition: String
    let temperature: Int
    let summaryTitle: String
    let summaryBody: String
    let metrics: [WeatherMetric]
    let dailyForecasts: [DailyForecast]
    let theme: WeatherTheme
}

struct WeatherMetric: Identifiable {
    let id = UUID()
    let symbol: String
    let value: String
    let label: String
}

struct DailyForecast: Identifiable {
    let id = UUID()
    let temperature: Int
    let symbol: String
    let day: String
    let date: String
}

extension WeatherSnapshot {
    static let preview = WeatherSnapshot(
        city: "Paris",
        dateText: "Friday, 20 January",
        condition: "Sunny",
        temperature: 31,
        summaryTitle: "Daily Summary",
        summaryBody: "Now it feels like +35°, actually +31°. It feels hot because of the direct sun. Today, the temperature ranges from +31° to 27°.",
        metrics: [
            WeatherMetric(symbol: "wind", value: "4km/h", label: "Wind"),
            WeatherMetric(symbol: "drop", value: "48%", label: "Humidity"),
            WeatherMetric(symbol: "eye", value: "1.6km", label: "Visibility")
        ],
        dailyForecasts: [
            DailyForecast(temperature: 26, symbol: "sun.max.fill", day: "21 Jan", date: "Tue"),
            DailyForecast(temperature: 25, symbol: "cloud.sun.fill", day: "22 Jan", date: "Wed"),
            DailyForecast(temperature: 27, symbol: "sun.max.fill", day: "23 Jan", date: "Thu"),
            DailyForecast(temperature: 26, symbol: "cloud.sun.fill", day: "24 Jan", date: "Fri")
        ],
        theme: .paris
    )
}
