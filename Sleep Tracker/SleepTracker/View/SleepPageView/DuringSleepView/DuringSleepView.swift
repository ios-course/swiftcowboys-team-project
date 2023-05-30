import SwiftUI

/// A view that displays information about whether the alarm is on and for when it goes off.
struct DuringSleepView: View {
    // MARK: - Non-private interface

    /// Text to show whether the alarm on/off. If the alarm. If the alarm is off,
    @State var alarmStatusText: String

    var body: some View {
        VStack {
            Text(sleepSignText)
                .offset(
                    x: 0,
                    y: imageToTextRelativeVerticalOffset
                )
            Image.AppImage.sleepingAstronautHorizontal

            MultilineCenteredLabelView(
                text: alarmStatusText
            )
        }
    }

    // MARK: - Private interface

    private let imageToTextRelativeVerticalOffset: CGFloat = 45
    private let sleepSignText = "zZZZzZZZZzZZzzz"
}

struct DuringSleepView_Previews: PreviewProvider {
    static var previews: some View {
        DuringSleepView(alarmStatusText: "No Alarm")
    }
}
