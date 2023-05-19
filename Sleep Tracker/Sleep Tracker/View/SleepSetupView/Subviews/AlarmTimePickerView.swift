import SwiftUI

/// A TimePicker in which the user can select the wake up time.
struct AlarmTimePickerView: View {
    // MARK: - Non-Private interface

    /// A boolean value that indicates whether the TimePicker is hidden.
    /// When `true` TimePicker is hidden and when `false` TimePicker is visible.
    @Binding var isHidden: Bool

    /// A date selected in the TimePicker.
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
