import SwiftUI

/// A view that displays information about whether the alarm is on and for when it goes off.
struct DuringSleepView: View {
    // MARK: - Non-private interface

    var body: some View {
        VStack {
            Text(sleepSignText)
                .offset(
                    x: 0,
                    y: imageToTextRelativeVerticalOffset
                )
            Image.AppImage.sleepingAstronautHorizontal

            MultilineCenteredLabelView(
                text: alarmStatusText,
                time: $alarmTime
            )
        }
    }

    // MARK: - Private interface

    private let imageToTextRelativeVerticalOffset: CGFloat = 45
    private let sleepSignText = "zZZZzZZZZzZZzzz"
    @State private var alarmStatusText = "Alarm "
    @State private var alarmTime = "07:30"
}

struct DuringSleepView_Previews: PreviewProvider {
    static var previews: some View {
        DuringSleepView()
    }
}
