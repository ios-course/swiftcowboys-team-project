import SwiftUI

/// A view where the user can set the alarm and choose specific time when it goes off.
struct SleepSetupView: View {
    // MARK: - Non-private interface

    /// A boolean value that indicates whether the alarm is on.
    @Binding var isAlarmOn: Bool

    // TODO:
    @Binding var selectedTime: Date

    // TODO:
    @State var estimatedText: String

    var body: some View {
        VStack {
            Image.AppImage.sleepingAstronautVertical

            HStack {
                RoundedAlarmView(
                    isOpaque: $isAlarmOn
                )
                .onTapGesture {
                    isAlarmOn.toggle()
                }

                AlarmSetupView(
                    isAlarmOn: isAlarmOn,
                    selectedDate: $selectedTime
                )
            }

            MultilineCenteredLabelView(
                text: estimatedText
            )
        }
    }
}

struct SleepSetupView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SleepSetupView(
                isAlarmOn: .constant(true),
                selectedTime: .constant(.now),
                estimatedText: "Predicted sleep duration:\n7h 52m"
            )
        }
    }
}
