import SwiftUI

struct WeatherBackgroundView: View {
    let theme: WeatherTheme

    var body: some View {
        LinearGradient(
            colors: [theme.backgroundTop, theme.backgroundBottom],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .overlay(alignment: .topTrailing) {
            Circle()
                .fill(Color.white.opacity(0.16))
                .frame(width: 220, height: 220)
                .blur(radius: 10)
                .offset(x: 85, y: -60)
        }
        .overlay(alignment: .bottomLeading) {
            RoundedRectangle(cornerRadius: 44, style: .continuous)
                .fill(Color.white.opacity(0.10))
                .frame(width: 180, height: 180)
                .rotationEffect(.degrees(24))
                .offset(x: -72, y: 52)
        }
        .ignoresSafeArea()
    }
}
