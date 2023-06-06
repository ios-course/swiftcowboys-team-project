import SwiftUI

/// A label that shows the name of the sleep report and its meaning.
struct ReportLabelView: View {
    // MARK: - Non-private interface

    /// A text to show in the label.
    let text: String

    /// A value to show in the label.
    let value: String

    var body: some View {
        HStack {
            Text(text)
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .frame(width: widthForText,
                       alignment: .leading)
            Text(value)
                .foregroundColor(.AppScheme.blueViolet)
            Spacer()
        }
        .font(.system(size: fontSizeForText,
                      weight: .bold))
        .padding(.leading,
                 leadingPaddingForNightSleepText)
        .padding(.top,
                 topPaddingForNightSleepText)
    }

    // MARK: - Private interface

    private let fontSizeForText: CGFloat = 20
    private let leadingPaddingForNightSleepText: CGFloat = 24
    private let topPaddingForNightSleepText: CGFloat = 28
    private let widthForText: CGFloat = 150
}

struct ReportLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ReportLabelView(text: "Sleep time",
                        value: "22:00")
    }
}
