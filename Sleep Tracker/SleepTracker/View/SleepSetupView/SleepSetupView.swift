import SwiftUI

/// A view where the user can set the alarm and choose specific time when it goes off.
struct SleepSetupView: View {
    // MARK: - Non-private interface

    /// A view model that provides the data to the view.
    @ObservedObject var viewModel: SleepSetupViewModel
    /// A boolean value that indicates whether the alarm is on.
    @State var isAlarmOn = false

    var body: some View {
        VStack {
            Image.AppImage.sleepingAstronautVertical

            HStack {
                RoundedAlarmView(isOpaque: $isAlarmOn)
                    .onTapGesture {
                        isAlarmOn.toggle()
                    }
                AlarmSetupView(
                    isAlarmOn: $isAlarmOn,
                    selectedDate: $viewModel.selectedTime
                )
            }

            MultilineCenteredLabelView(
                text: estimatedSleepText,
                time: $viewModel.sleepDuration
            )
        }
    }

    // MARK: - Private interface

    private let estimatedSleepText = "Predicted sleep duration:\n"
}

struct SleepSetupView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SleepSetupView(
                viewModel: SleepSetupViewModel(),
                isAlarmOn: true
            )
        }
    }
}
