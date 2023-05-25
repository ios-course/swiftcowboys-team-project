import SwiftUI

/// A view that shows an information according to the alarm status.
struct AlarmSetupView: View {
    /// A boolean value that indicates whether the alarm is on.
    @Binding var isAlarmOn: Bool
    /// The date displayed by the picker.
    @Binding var selectedDate: Date

    var body: some View {
        if isAlarmOn {
            WheelTimePickerView(selectedDate: $selectedDate)
        } else {
            NoAlarmLabelView()
        }
    }
}

struct AlarmSetupView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmSetupView(
            isAlarmOn: .constant(false),
            selectedDate: .constant(.now)
        )
    }
}
