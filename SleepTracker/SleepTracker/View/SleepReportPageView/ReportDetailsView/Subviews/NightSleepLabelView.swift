import SwiftUI

/// A view that displays text and a moon icon.
struct NightSleepLabelView: View {
    // MARK: - Non-private interface

    var body: some View {
        HStack {
            Text(nightSleepText)
                .font(.system(size: fontSizeForNightSleepText,
                              weight: .bold))
                .foregroundColor(.AppScheme.brightBlue)
                .padding(.leading,
                         paddingForNightSleepText)
            Image.AppImage.moonWithStarsSymbolPurple
            Spacer()
        }
    }

    // MARK: - Private interface

    private let fontSizeForNightSleepText: CGFloat = 20
    private let paddingForNightSleepText: CGFloat = 24
    private let nightSleepText = "Night Sleep"
}

struct NightSleepLabelView_Previews: PreviewProvider {
    static var previews: some View {
        NightSleepLabelView()
            .previewLayout(.sizeThatFits)
    }
}
