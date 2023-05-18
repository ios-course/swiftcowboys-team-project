import SwiftUI

/// A view that displays a time picker and a label indicating that the alarm clock is off.
struct AlarmSetupView: View {
    /// A boolean value that indicates whether the Label is hidden.
    /// When `true` Label is hidden and when `false` Label is visible.
    @Binding var isHidden: Bool

    /// A variable that returns the date selected in TimePicker.
    @State var selectedDate: Date

    var body: some View {
        ZStack {
            AlarmTimePickerView(isHidden: $isHidden,
                                selectedDate: selectedDate)
            NoAlarmLabel(isHidden: $isHidden)
        }
    }
}

struct AlarmSetupView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmSetupView(isHidden: .constant(false),
                       selectedDate: .now)
    }
}
