import SwiftUI

/// A view that displays text and a moon icon.
struct NightSleepLabelView: View {
    // MARK: - Non-private interface

    var body: some View {
        HStack {
            Text(nightSleepText)
                .font(.system(size: .AppFontSize.base,
                              weight: .bold))
                .foregroundColor(.AppScheme.brightBlue)
            Image.AppImage.moonWithStarsSymbolPurple
            Spacer()
        }
    }

    // MARK: - Private interface

    private let nightSleepText = "Night Sleep"
}

struct NightSleepLabelView_Previews: PreviewProvider {
    static var previews: some View {
        NightSleepLabelView()
            .previewLayout(.sizeThatFits)
    }
}
