import SwiftUI

/// A view that has a right upper rounded corner and shows the user's sleep report.
struct ReportDetailsView: View {
    // MARK: - Non-private interface

    /// A text to show what time the user went to bed.
    var sleepTimeValueText: String

    /// A text to show what time the user woke up.
    var wakeUpTimeValueText: String

    /// A text to show the user’s sleep duration.
    var sleepDurationValueText: String

    var body: some View {
        VStack {
            NightSleepLabelView()
                .padding(.top,
                         paddingForNightSleepLabelView)
                .padding(.leading, leadingPadding)
            VStack {
                ReportLabelView(text: sleepTimeText,
                                value: sleepTimeValueText)
                ReportLabelView(text: wakeUpTimeText,
                                value: wakeUpTimeValueText)
                ReportLabelView(text: sleepDurationText,
                                value: sleepDurationValueText)
            }
            .padding(.top,
                     paddingForReportLabelViews)
            .padding(.leading, leadingPadding)

            Button(finishText) {}
                .buttonStyle(RoundedRectangleBlue())
                .padding(.horizontal, horizontalPaddingForButton)
                .padding(.bottom, bottomPaddingForButton)
                .padding(.top, topPaddingForButton)
        }
        .background(Color.white)
        .cornerRadius(cornerRadiusForVStackWithRoundedCorner,
                      corners: [.topRight])
    }

    // MARK: - Private interface

    private let cornerRadiusForVStackWithRoundedCorner: CGFloat = 80
    private let paddingForNightSleepLabelView: CGFloat = 39
    private let paddingForReportLabelViews: CGFloat = 85
    private let horizontalPaddingForButton: CGFloat = 36
    private let bottomPaddingForButton: CGFloat = 52
    private let topPaddingForButton: CGFloat = 85
    private let leadingPadding: CGFloat = 24
    private let finishText = "FINISH"
    private let sleepTimeText = "Sleep Time"
    private let wakeUpTimeText = "Wake-up time"
    private let sleepDurationText = "Sleep duration"
}

struct ReportDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ReportDetailsView(sleepTimeValueText: "22:00",
                          wakeUpTimeValueText: "06:00",
                          sleepDurationValueText: "7h 30m")
    }
}
