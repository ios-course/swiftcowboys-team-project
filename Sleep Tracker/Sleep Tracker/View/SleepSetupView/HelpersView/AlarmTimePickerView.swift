import SwiftUI

/// A custom TimePicker in which the user will be able to choose what time he wakes up.
struct AlarmTimePickerView: View {
    // MARK: - Public interface

    /// A boolean value that indicates whether the TimePicker is hidden.
    /// When `true` TimePicker is hide and when `false` TimePicker is show.
    @Binding var isHide: Bool

    var body: some View {
        DatePicker("", selection: $currentDate, displayedComponents: .hourAndMinute)
            .labelsHidden()
            .datePickerStyle(.wheel)
            .frame(width: 200, height: 100)
            .clipped()
            .padding(.leading, 40)
            .zIndex(0)
            .opacity(isHide ? 1.0 : 0.0)
    }

    // MARK: - Private interface

    @State private var currentDate = Date()
}

struct SleepTimePicker_Previews: PreviewProvider {
    static var previews: some View {
        AlarmTimePickerView(isHide: .constant(true))
    }
}
