import SwiftUI

/// A view shows the options that the user can set before go to bed.
struct SleepSetupView: View {
    // MARK: - Non-Private interface

    /// Boolean value that indicates whether the alarm is on.
    @State var isAlarmOn = false

    var body: some View {
        VStack {
            Image.AppImage.sleepingAstronaut
            HStack {
                RoundedAlarmView(isAnimated: $isAlarmOn)
                    .onTapGesture {
                        withAnimation(Animation.spring().speed(1)) {
                            isAlarmOn.toggle()
                        }
                    }
                AlarmSetupView(isHidden: $isAlarmOn,
                               selectedDate: .now)
            }
            EstimatedLabel()
        }
        .padding()
    }
}

struct SleepSetupView_Previews: PreviewProvider {
    static var previews: some View {
        SleepSetupView()
    }
}
