import SwiftUI

/// A label that shows the name of the sleep report and its value.
struct ReportNameLabelView: View {
    // MARK: - Non-private interface

    /// A sleep score name to show in the label.
    let sleepScoreName: String

    /// A sleep score to show in the label.
    let sleepScore: String

    var body: some View {
        HStack {
            Text(sleepScoreName)
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .frame(width: widthForText,
                       alignment: .leading)
            Text(sleepScore)
                .foregroundColor(.AppScheme.blueViolet)
            Spacer()
        }
        .font(.system(size: .AppFontSize.base,
                      weight: .bold))
    }

    // MARK: - Private interface

    private let widthForText: CGFloat = 150
}

struct ReportNameLabelView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ReportNameLabelView(sleepScoreName: "Sleep time",
                                sleepScore: "22:00")
            ReportNameLabelView(sleepScoreName: "Wake-up time",
                                sleepScore: "06:00")
            ReportNameLabelView(sleepScoreName: "Sleep duration",
                                sleepScore: "7h 30m")
        }
    }
}
