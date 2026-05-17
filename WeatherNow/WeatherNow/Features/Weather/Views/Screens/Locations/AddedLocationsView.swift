import SwiftUI

struct AddedLocationsView: View {
    @StateObject private var viewModel: AddedLocationsViewModel

    init(viewModel: AddedLocationsViewModel = AddedLocationsViewModel()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 0.10, green: 0.14, blue: 0.26),
                    Color(red: 0.16, green: 0.23, blue: 0.42)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 28) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Added Locations")
                            .font(.system(size: 34, weight: .heavy, design: .rounded))

                        Text("Saved cities with quick weather context")
                            .font(.system(size: 16, weight: .medium, design: .rounded))
                            .foregroundStyle(Color.white.opacity(0.72))
                    }

                    LazyVStack(spacing: 16) {
                        ForEach(viewModel.locations) { location in
                            AddedLocationCardView(location: location)
                        }
                    }
                }
                .padding(.horizontal, 24)
                .padding(.top, 32)
                .padding(.bottom, 32)
            }
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

private struct AddedLocationCardView: View {
    let location: AddedLocation

    var body: some View {
        let style = location.cardStyle

        VStack(alignment: .leading, spacing: 18) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 6) {
                    Text(location.localTime)
                        .font(.system(size: 14, weight: .medium, design: .rounded))
                        .foregroundStyle(style.secondaryTextColor)
                    
                    Text(location.city)
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                        .foregroundStyle(style.primaryTextColor)
                    
                }

                Spacer()
                
                Image(systemName: "\(location.conditionIcon).fill")
                    .font(.system(size: 12, weight: .bold))
                
            
            }
            
            HStack(alignment: .top) {
                Text(location.condition)
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                    .foregroundStyle(style.secondaryTextColor)
                
                Spacer()
                
                    Text("\(location.temperature)°")
                        .font(.system(size: 48, weight: .heavy, design: .rounded))
                        .foregroundStyle(style.primaryTextColor)

                   
                }
            
            HStack(spacing: 12) {
                AddedLocationMetricPill(
                    title: "WIND",
                    symbol: "wind",
                    text: location.windSpeed,
                    style: style
                )

                AddedLocationMetricPill(
                    title: "HUMIDITY",
                    symbol: "drop.fill",
                    text: "\(location.humidity)%",
                    style: style
                )

            }
            
            }            .padding(20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                LinearGradient(
                    colors: [style.backgroundTop, style.backgroundBottom],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ),
                in: RoundedRectangle(cornerRadius: 28, style: .continuous)
            )
            .overlay {
                RoundedRectangle(cornerRadius: 28, style: .continuous)
                    .stroke(style.borderColor, lineWidth: 1)
            }
    }
}

private struct AddedLocationMetricPill: View {
    let title: String
    let symbol: String
    let text: String
    let style: AddedLocationCardStyle

    var body: some View {
        VStack(alignment: .leading ,spacing: 8) {
            Text(title)
                .font(.system(size: 14, weight: .medium, design: .rounded))
                .foregroundStyle(style.secondaryTextColor)
                .opacity(0.8)
            
            Text(text)
                .font(.system(size: 20, weight: .medium, design: .rounded))
                .foregroundStyle(style.primaryTextColor)
        }
        .foregroundStyle(style.primaryTextColor)
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .background(style.pillBackgroundColor,in: RoundedRectangle(cornerRadius: 24, style: .continuous))
        .frame(maxWidth: .infinity)
    }
}

struct AddedLocationsView_Previews: PreviewProvider {
    static var previews: some View {
        AddedLocationsView(viewModel: AddedLocationsViewModel())
    }
}
