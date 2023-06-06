import SwiftUI

/// A view that has a right upper rounded corner and shows the user's sleep report.
struct ReportDetailsView: View {
    // MARK: - Non-private interface

    /// A text to show what time the user went to bed.
    var sleepTimeValueText: String

    /// A text to show how long the user sleep.
    var wakeUpTimeValueText: String

    /// A text to show as an estimated sleep time.
    var sleepDurationValueText: String

    var body: some View {
        VStack {
            NightSleepView()
                .padding(.top,
                         paddingForNightSleepView)

            ReportInfoView(sleepTimeValueText: sleepTimeValueText,
                           wakeUpTimeValueText: wakeUpTimeValueText,
                           sleepDurationValueText: sleepDurationValueText)
                .padding(.top,
                         paddingForReportInfoView)

            Button(finishText) {}
                .buttonStyle(RoundedRectangleBlue())
                .padding(.horizontal, horizontalPaddingForButton)
                .padding(.bottom, bottomPaddingForButton)
                .padding(.top, topPaddingForButton)
        }
        .background(Color.white)
        .cornerRadius(cornerRadiusForVStack,
                      corners: [.topRight])
    }

    // MARK: - Private interface

    private let cornerRadiusForVStack: CGFloat = 80
    private let paddingForNightSleepView: CGFloat = 39
    private let paddingForReportInfoView: CGFloat = 85
    private let horizontalPaddingForButton: CGFloat = 36
    private let bottomPaddingForButton: CGFloat = 52
    private let topPaddingForButton: CGFloat = 85
    private let finishText: String = "Finish"
}

struct ReportDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ReportDetailsView(sleepTimeValueText: "22:00",
                          wakeUpTimeValueText: "06:00",
                          sleepDurationValueText: "7h30m")
    }
}
