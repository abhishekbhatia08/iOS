import SwiftUI

struct MetricsCardView: View {
    let metrics: [WeatherMetric]
    let theme: WeatherTheme

    var body: some View {
        HStack(spacing: 10) {
            ForEach(metrics) { metric in
                WeatherMetricItemView(metric: metric, theme: theme)
            }
        }
        .padding(.horizontal, 18)
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity)
        .background(theme.cardBackground, in: RoundedRectangle(cornerRadius: 24, style: .continuous))
        .shadow(color: theme.shadowColor, radius: 16, y: 8)
    }
}

private struct WeatherMetricItemView: View {
    let metric: WeatherMetric
    let theme: WeatherTheme

    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: metric.symbol)
                .font(.system(size: 22, weight: .medium))
                .foregroundStyle(theme.cardForeground)

            Text(metric.value)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundStyle(Color.white)

            Text(metric.label)
                .font(.system(size: 12, weight: .medium, design: .rounded))
                .foregroundStyle(Color.white.opacity(0.72))
        }
        .frame(maxWidth: .infinity)
    }
}
