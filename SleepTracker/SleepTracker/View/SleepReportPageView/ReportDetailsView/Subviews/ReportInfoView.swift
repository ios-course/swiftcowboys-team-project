import SwiftUI

/// A view that displays information about the sleep report.
struct ReportInfoView: View {
    // MARK: - Non-private interface

    /// A text to show what time the user went to bed.
    var sleepTimeValueText: String

    /// A text to show how long the user sleep.
    var wakeUpTimeValueText: String

    /// A text to show as an estimated sleep time.
    var sleepDurationValueText: String

    var body: some View {
        VStack {
            ReportLabelView(text: sleepTimeText,
                            value: sleepTimeValueText)
            ReportLabelView(text: wakeUpTimeText,
                            value: wakeUpTimeValueText)
            ReportLabelView(text: sleepDurationText,
                            value: sleepDurationValueText)
        }
    }

    // MARK: - Private interface

    private let sleepTimeText = "Sleep Time"
    private let wakeUpTimeText = "Wake-up time"
    private let sleepDurationText = "Sleep duration"
}

struct ReportInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ReportInfoView(sleepTimeValueText: "22:00",
                       wakeUpTimeValueText: "06:00",
                       sleepDurationValueText: "7h30m")
    }
}
