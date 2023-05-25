import SwiftUI

/// A view displaying information during the current sleep.
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
                text: alarmStatusText
            )
        }
    }

    // MARK: - Private interface

    private let imageToTextRelativeVerticalOffset: CGFloat = 45
    private let sleepSignText = "zZZZzZZZZzZZzzz"
    @State private var alarmStatusText = "Alarm 07:30"
}

struct DuringSleepView_Previews: PreviewProvider {
    static var previews: some View {
        DuringSleepView()
    }
}
