import SwiftUI

struct SummaryCardView: View {
    let title: String
    let bodyText: String
    let textColor: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.system(size: 22, weight: .heavy, design: .rounded))

            Text(bodyText)
                .font(.system(size: 14, weight: .medium, design: .rounded))
                .foregroundStyle(textColor.opacity(0.78))
                .fixedSize(horizontal: false, vertical: true)
        }
        .foregroundStyle(textColor)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
