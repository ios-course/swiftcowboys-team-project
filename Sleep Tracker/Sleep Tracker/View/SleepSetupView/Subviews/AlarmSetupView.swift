import SwiftUI

/// A view that shows an information according to the alarm status.
struct AlarmSetupView: View {
    /// A boolean value that indicates whether the alarm is on.
    /// If `true` TimePicker is show, otherwise Label is show.
    @Binding var isAlarmOn: Bool

    /// A date selected in the TimePicker.
    @State var selectedDate: Date

    var body: some View {
        switch isAlarmOn {
        case true:
            WheelTimePickerView(selectedDate: selectedDate)
        case false:
            NoAlarmLabel()
        }
    }
}

struct AlarmSetupView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmSetupView(isAlarmOn: .constant(false),
                       selectedDate: .now)
    }
}
