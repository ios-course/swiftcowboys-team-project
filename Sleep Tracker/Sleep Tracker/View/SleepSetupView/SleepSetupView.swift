import SwiftUI

/// A view shows the options that the user can set before go to bed.
struct SleepSetupView: View {
    // MARK: - Public interface

    /// Boolean value that indicates whether the alarm is on.
    @State var isAlarmOn = false

    var body: some View {
        VStack {
            Image.AppImage.sleepingAstronaut
            HStack {
                RoundedAlarmView(animate: $isAlarmOn)
                    .onTapGesture {
                        withAnimation(Animation.spring().speed(1)) {
                            isAlarmOn.toggle()
                        }
                    }
                ZStack {
                    AlarmTimePickerView(isHide: $isAlarmOn)
                    noAlarmLabel
                }
            }
            estimatedLabel
        }
    }

    // MARK: - Private interface

    private var noAlarmLabel: some View {
        Text("No alarm clock,\njust a sleep analysis")
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
