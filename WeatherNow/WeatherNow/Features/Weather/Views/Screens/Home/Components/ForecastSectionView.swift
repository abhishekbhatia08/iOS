import SwiftUI

struct ForecastSectionView: View {
    let forecasts: [DailyForecast]
    let theme: WeatherTheme

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("Weekly forecast")
                    .font(.system(size: 24, weight: .heavy, design: .rounded))

                Spacer()

                Image(systemName: "arrow.right")
                    .font(.system(size: 16, weight: .bold))
            }

            HStack(spacing: 12) {
                ForEach(forecasts) { forecast in
                    ForecastCardView(forecast: forecast, theme: theme)
                }
            }
        }
        .foregroundStyle(theme.primaryText)
    }
}

private struct ForecastCardView: View {
    let forecast: DailyForecast
    let theme: WeatherTheme

    var body: some View {
        VStack(spacing: 10) {
            Text("\(forecast.temperature)°")
                .font(.system(size: 24, weight: .bold, design: .rounded))

            Image(systemName: forecast.symbol)
                .font(.system(size: 18, weight: .semibold))

            Text(forecast.day)
                .font(.system(size: 12, weight: .bold, design: .rounded))

            Text(forecast.date)
                .font(.system(size: 11, weight: .medium, design: .rounded))
                .foregroundStyle(theme.secondaryText)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 14)
        .background(Color.white.opacity(0.14), in: RoundedRectangle(cornerRadius: 18, style: .continuous))
        .overlay {
            RoundedRectangle(cornerRadius: 18, style: .continuous)
                .stroke(theme.borderColor, lineWidth: 1.2)
        }
    }
}
