import SwiftUI

/// A view show the option to set the alarm clock and set the wake-up time before go to bed.
struct SleepSetupView: View {
    // MARK: - Public interface

    /// Boolean value by which we can know if the alarm is on or off.
    @State var isAlarmOn = false

    var body: some View {
        VStack {
            Image.AppImage.sleepingAstronaut
            HStack {
                AlarmButton(animate: $isAlarmOn)
                    .onTapGesture {
                        withAnimation(Animation.spring().speed(1)) {
                            isAlarmOn.toggle()
                        }
                    }
                ZStack {
                    SleepTimePicker(isHide: $isAlarmOn)
                    noAlarmLabel
                }
            }
            estimatedLabel
        }
    }

    // MARK: - Private interface

    private var noAlarmLabel: some View {
        Text("No alarm clock,\njust analyzed sleep")
            .font(.system(size: 20, weight: .bold))
            .opacity(isAlarmOn ? 0.0 : 1.0)
    }

    private var estimatedLabel: some View {
        Text("estimated bedtime 07:52")
            .font(.system(size: 20, weight: .bold))
            .padding(.top, 50)
    }
}

struct SleepSetupView_Previews: PreviewProvider {
    static var previews: some View {
        SleepSetupView()
    }
}
