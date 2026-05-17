import SwiftUI

struct WeatherTheme {
    let backgroundTop: Color
    let backgroundBottom: Color
    let primaryText: Color
    let secondaryText: Color
    let cardBackground: Color
    let cardForeground: Color
    let accent: Color
    let pillBackground: Color
    let borderColor: Color
    let shadowColor: Color

    static let paris = WeatherTheme(
        backgroundTop: Color(red: 1.00, green: 0.92, blue: 0.32),
        backgroundBottom: Color(red: 0.98, green: 0.84, blue: 0.28),
        primaryText: .black,
        secondaryText: Color.black.opacity(0.76),
        cardBackground: Color.black.opacity(0.96),
        cardForeground: Color(red: 1.00, green: 0.92, blue: 0.42),
        accent: .black,
        pillBackground: Color.black.opacity(0.92),
        borderColor: Color.black.opacity(0.72),
        shadowColor: Color.black.opacity(0.18)
    )
}
