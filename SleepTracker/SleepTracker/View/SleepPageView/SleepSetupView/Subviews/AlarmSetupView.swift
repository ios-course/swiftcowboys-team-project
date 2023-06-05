import SwiftUI

/// A view that shows an information according to the alarm status.
struct AlarmSetupView: View {
    /// A boolean value that indicates whether the alarm is on.
    let isAlarmOn: Bool

    /// The date displayed by the picker.
    @Binding var selectedDate: Date

    var body: some View {
        if isAlarmOn {
            WheelTimePickerView(selectedTime: $selectedDate)
        } else {
            NoAlarmLabelView()
        }
    }
}

struct AlarmSetupView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            AlarmSetupView(
                isAlarmOn: false,
                selectedDate: .constant(.now)
            )

            AlarmSetupView(
                isAlarmOn: true,
                selectedDate: .constant(.now)
            )
        }
    }
}
