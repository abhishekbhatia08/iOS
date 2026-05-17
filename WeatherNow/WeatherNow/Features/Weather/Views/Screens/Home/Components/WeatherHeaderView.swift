import SwiftUI

struct WeatherHeaderView: View {
    let weather: WeatherSnapshot

    var body: some View {
        VStack(spacing: 14) {
            HStack {
                Image(systemName: "line.3.horizontal")
                    .font(.system(size: 18, weight: .bold))

                Spacer()

                NavigationLink {
                    AddedLocationsView()
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundStyle(weather.theme.primaryText)
                }
            }

            Text(weather.city)
                .font(.system(size: 28, weight: .heavy, design: .rounded))

            Text(weather.dateText)
                .font(.system(size: 12, weight: .semibold, design: .rounded))
                .padding(.horizontal, 14)
                .padding(.vertical, 8)
                .background(weather.theme.pillBackground, in: Capsule())
                .foregroundStyle(Color.white)

            Text(weather.condition)
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .foregroundStyle(weather.theme.secondaryText)
        }
        .foregroundStyle(weather.theme.primaryText)
    }
}
