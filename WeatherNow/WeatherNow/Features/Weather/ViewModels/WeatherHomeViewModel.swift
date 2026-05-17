import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    @Published var weather: WeatherSnapshot

    init(weather: WeatherSnapshot = .preview) {
        self.weather = weather
    }
}
