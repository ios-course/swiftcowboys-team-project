import SwiftUI

/// A view that allows to select (pick) a specific time (hours and minutes within 00:00 - 23:59 range).
/// Picker has the "wheel" style.
struct WheelTimePickerView: View {
    /// The date displayed by the picker.
    @Binding var selectedDate: Date

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
    }
}

struct WheelTimePickerView_Previews: PreviewProvider {
    static var previews: some View {
        WheelTimePickerView(selectedDate: .constant(.now))
    }
}
