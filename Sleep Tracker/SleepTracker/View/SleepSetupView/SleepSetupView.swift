import SwiftUI

/// A view shows the options that the user can set before go to bed.
struct SleepSetupView: View {
    // MARK: - Non-private interface

    /// A boolean value that indicates whether the alarm is on.
    @State var isAlarmOn = false

    var body: some View {
        VStack {
            Image.AppImage.sleepingAstronaut
            HStack {
                RoundedAlarmView(isOpaque: $isAlarmOn)
                    .onTapGesture {
                        isAlarmOn.toggle()
                    }
                AlarmSetupView(isAlarmOn: $isAlarmOn,
                               selectedDate: .now)
            }
            EstimatedSleepDurationLabelView()
        }
        .padding()
    }

    // MARK: - Private interface
}

struct SleepSetupView_Previews: PreviewProvider {
    static var previews: some View {
        SleepSetupView()
    }
}
