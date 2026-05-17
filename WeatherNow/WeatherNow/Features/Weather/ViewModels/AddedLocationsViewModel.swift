import Foundation
import Combine

final class AddedLocationsViewModel: ObservableObject {
    @Published var locations: [AddedLocation]

    init(locations: [AddedLocation] = AddedLocation.demoLocations) {
        self.locations = locations
    }
}
