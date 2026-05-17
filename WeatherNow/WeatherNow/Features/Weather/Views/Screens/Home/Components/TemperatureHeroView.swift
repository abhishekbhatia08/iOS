import SwiftUI

struct TemperatureHeroView: View {
    let temperature: Int
    let color: Color

    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            Text("\(temperature)")
                .font(.system(size: 132, weight: .black, design: .rounded))
                .tracking(-6)

            Text("°")
                .font(.system(size: 72, weight: .bold, design: .rounded))
                .padding(.top, 16)
        }
        .foregroundStyle(color)
        .frame(maxWidth: .infinity)
    }
}
