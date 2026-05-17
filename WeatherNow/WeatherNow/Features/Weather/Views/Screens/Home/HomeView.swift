import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel: HomeViewModel

    init(viewModel: HomeViewModel = HomeViewModel()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        let weather = viewModel.weather

        ZStack {
            WeatherBackgroundView(theme: weather.theme)

            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 28) {
                    WeatherHeaderView(weather: weather)

                    TemperatureHeroView(
                        temperature: weather.temperature,
                        color: weather.theme.primaryText
                    )

                    SummaryCardView(
                        title: weather.summaryTitle,
                        bodyText: weather.summaryBody,
                        textColor: weather.theme.primaryText
                    )

                    MetricsCardView(
                        metrics: weather.metrics,
                        theme: weather.theme 
                    )

                    ForecastSectionView(
                        forecasts: weather.dailyForecasts,
                        theme: weather.theme
                    )
                }
                .padding(.horizontal, 24)
                .padding(.top, 18)
                .padding(.bottom, 32)
            }
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}
