import Testing
@testable import WeatherNow

struct HomeViewModelTests {

    @Test
    func startsWithPreviewWeather() {
        let viewModel = HomeViewModel()

        #expect(viewModel.weather.city == "Paris")
        #expect(viewModel.weather.temperature == 31)
        #expect(viewModel.weather.metrics.count == 3)
        #expect(viewModel.weather.dailyForecasts.count == 4)
    }
}
