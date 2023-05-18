import SwiftUI

/// A custom TimePicker in which the user will be able to choose what time he wakes up.
struct AlarmTimePickerView: View {
    // MARK: - Non-Private interface

    /// A boolean value that indicates whether the TimePicker is hidden.
    /// When `true` TimePicker is hidden and when `false` TimePicker is visible.
    @Binding var isHidden: Bool

    /// A variable that returns the date selected in TimePicker.
    @State var selectedDate: Date

    var body: some View {
        DatePicker("",
                   selection: $selectedDate,
                   displayedComponents: .hourAndMinute)
            .labelsHidden()
            .datePickerStyle(.wheel)
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   maxHeight: 100,
                   alignment: .center)
            .clipped()
            .opacity(isHidden ? 1.0 : 0.0)
    }
}

struct AlarmTimePickerView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmTimePickerView(isHidden: .constant(true),
                            selectedDate: .now)
    }
}
