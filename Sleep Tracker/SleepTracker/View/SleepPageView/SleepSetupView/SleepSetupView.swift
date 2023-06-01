import SwiftUI

/// A view where the user can set the alarm and choose specific time when it goes off.
struct SleepSetupView: View {
    // MARK: - Non-private interface

    /// A boolean value that indicates whether the alarm is on.
    @Binding var isAlarmOn: Bool

    /// A time selected on the time picker.
    @Binding var selectedTime: Date

    /// A text to show as an estimated sleep time.
    var estimatedSleepTimeText: String

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
                text: estimatedSleepTimeText
            )
        }
    }
}

struct SleepSetupView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }

    struct ContainerView: View {
        @State var isShowing = true
        @State var dateFool = Date.now

        var body: some View {
            SleepSetupView(
                isAlarmOn: $isShowing,
                selectedTime: $dateFool,
                estimatedSleepTimeText: "Predicted sleep duration:\n7h 52m"
            )
        }
    }
}
