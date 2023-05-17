import SwiftUI

/**
 A view show the option to set the alarm clock and set the wake-up time before go to bed.
 */
struct SleepSetupView: View {
    // MARK: - Public interface

    /**
     Boolean value by which we can know if the alarm is on or off
     */
    @State var isAlarmOn = false

    var body: some View {
        VStack {
            SleepingAstronautImage()
            HStack {
                AlarmButton(animate: $isAlarmOn)
                    .onTapGesture {
                        withAnimation(Animation.spring().speed(1)) {
                            isAlarmOn.toggle()
                        }
                    }
                ZStack {
                    timePicker
                    noAlarmLabel
                }
            }
            estimatedLabel
        }
    }

    // MARK: - Private interface

    @State private var currentDate = Date()

    /**
     Creating a custom TimePicker in which the user will be able to choose what time he wakes up.
     */
    private var timePicker: some View {
        DatePicker("", selection: $currentDate, displayedComponents: .hourAndMinute)
            .labelsHidden()
            .datePickerStyle(.wheel)
            .frame(width: 200, height: 100)
            .clipped()
            .padding(.leading, 40)
            .zIndex(0)
            .opacity(isAlarmOn ? 1.0 : 0.0)
    }

    /**
     Creating a label if the alarm clock is not on.
     */
    private var noAlarmLabel: some View {
        Text("No alarm,\nonly sleep analized")
            .font(.system(size: 20, weight: .bold))
            .opacity(isAlarmOn ? 0.0 : 1.0)
    }

    /**
     Creating a custom Estimated Label which shows how long the user will sleep.
     */
    private var estimatedLabel: some View {
        Text("estimated bedtime 7:52")
            .font(.system(size: 20, weight: .bold))
            .padding(.top, 50)
    }
}

struct SleepSetupView_Previews: PreviewProvider {
    static var previews: some View {
        SleepSetupView()
    }
}
