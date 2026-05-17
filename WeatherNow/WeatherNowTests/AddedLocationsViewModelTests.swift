import Testing
@testable import WeatherNow

struct AddedLocationsViewModelTests {

    @Test
    func startsWithDemoLocations() {
        let viewModel = AddedLocationsViewModel()

        #expect(viewModel.locations.count == 4)
        #expect(viewModel.locations.first?.city == "Paris")
        #expect(viewModel.locations.last?.condition == "Clear")
    }
}
