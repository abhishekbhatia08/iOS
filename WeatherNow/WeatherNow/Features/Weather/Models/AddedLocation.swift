import Foundation
import SwiftUI

struct AddedLocation: Identifiable {
    let id = UUID()
    let city: String
    let localTime: String
    let temperature: Int
    let windSpeed: String
    let humidity: Int
    let condition: String
    let conditionIcon: String
    let cardStyle: AddedLocationCardStyle
}

struct AddedLocationCardStyle {
    let backgroundTop: Color
    let backgroundBottom: Color
    let usesDarkForeground: Bool

    var primaryTextColor: Color {
        usesDarkForeground ? .black : .white
    }

    var secondaryTextColor: Color {
        primaryTextColor.opacity(0.72)
    }

    var pillBackgroundColor: Color {
        usesDarkForeground ? Color.black.opacity(0.10) : Color.white.opacity(0.16)
    }

    var borderColor: Color {
        usesDarkForeground ? Color.black.opacity(0.14) : Color.white.opacity(0.16)
    }
}

extension AddedLocation {
    static let demoLocations: [AddedLocation] = [
        AddedLocation(
            city: "Paris",
            localTime: "9:41 AM",
            temperature: 31,
            windSpeed: "4 km/h",
            humidity: 48,
            condition: "Sunny",
            conditionIcon: "sun",
            cardStyle: AddedLocationCardStyle(
                backgroundTop: Color(red: 1.00, green: 0.92, blue: 0.32),
                backgroundBottom: Color(red: 0.98, green: 0.84, blue: 0.28),
                usesDarkForeground: true
            )
        ),
        AddedLocation(
            city: "New York",
            localTime: "3:41 AM",
            temperature: 28,
            windSpeed: "2 km/h",
            humidity: 62,
            condition: "Cloudy",
            conditionIcon: "cloud",
            cardStyle: AddedLocationCardStyle(
                backgroundTop: Color(red: 0.26, green: 0.78, blue: 1.00),
                backgroundBottom: Color(red: 0.18, green: 0.63, blue: 0.95),
                usesDarkForeground: true
            )
        ),
        AddedLocation(
            city: "Sydney",
            localTime: "5:41 PM",
            temperature: 17,
            windSpeed: "1 km/h",
            humidity: 78,
            condition: "Rain",
            conditionIcon: "rain",
            cardStyle: AddedLocationCardStyle(
                backgroundTop: Color(red: 1.00, green: 0.39, blue: 0.83),
                backgroundBottom: Color(red: 0.93, green: 0.29, blue: 0.72),
                usesDarkForeground: true
            )
        ),
        AddedLocation(
            city: "Tokyo",
            localTime: "4:41 PM",
            temperature: 24,
            windSpeed: "6 km/h",
            humidity: 54,
            condition: "Clear",
            conditionIcon: "wind",
            cardStyle: AddedLocationCardStyle(
                backgroundTop: Color(red: 0.17, green: 0.21, blue: 0.34),
                backgroundBottom: Color(red: 0.11, green: 0.14, blue: 0.24),
                usesDarkForeground: false
            )
        )
    ]
}
