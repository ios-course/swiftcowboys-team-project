import SwiftUI

/// A view that has a right upper rounded corner and shows the user's sleep report.
struct ReportDetailsView: View {
    // MARK: - Non-private interface

    /// A text to show what time the user went to bed.
    var bedTimeText: String

    /// A text to show what time the user woke up.
    var wakeUpTimeText: String

    /// A text to show the user’s sleep duration.
    var sleepDurationTimeText: String

    var body: some View {
        VStack {
            NightSleepLabelView()
                .padding(.top,
                         paddingForNightSleepLabelView)
                .padding(.leading, leadingPadding)
            VStack(alignment: .center,
                   spacing: spacingForReportNameLabelViews) {
                ReportNameLabelView(sleepScoreName: sleepTimeText,
                                    sleepScore: bedTimeText)
                ReportNameLabelView(sleepScoreName: wakeUpText,
                                    sleepScore: wakeUpTimeText)
                ReportNameLabelView(sleepScoreName: sleepDurationText,
                                    sleepScore: sleepDurationTimeText)
            }
            .padding(.top,
                     baseTopPadding)
            .padding(.leading, leadingPadding)

            Button(finishText) {}
                .buttonStyle(RoundedRectangleBlue())
                .padding(.horizontal, horizontalPaddingForButton)
                .padding(.bottom, bottomPaddingForButton)
                .padding(.top, baseTopPadding)
        }
        .background(Color.white)
        .cornerRadius(cornerRadiusForVStackWithRoundedCorner,
                      corners: [.topRight])
    }

    // MARK: - Private interface

    private let spacingForReportNameLabelViews: CGFloat = 28
    private let cornerRadiusForVStackWithRoundedCorner: CGFloat = 80
    private let paddingForNightSleepLabelView: CGFloat = 39
    private let baseTopPadding: CGFloat = 85
    private let horizontalPaddingForButton: CGFloat = 36
    private let bottomPaddingForButton: CGFloat = 48
    private let leadingPadding: CGFloat = 24
    private let finishText = "FINISH"
    private let sleepTimeText = "Sleep Time"
    private let wakeUpText = "Wake-up time"
    private let sleepDurationText = "Sleep duration"
}

struct ReportDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ReportDetailsView(bedTimeText: "22:00",
                          wakeUpTimeText: "06:00",
                          sleepDurationTimeText: "7h 30m")
    }
}
