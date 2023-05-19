import SwiftUI

/// A TimePicker with style wheel.
struct WheelTimePickerView: View {
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
    }
}

struct WheelTimePickerView_Previews: PreviewProvider {
    static var previews: some View {
        WheelTimePickerView(selectedDate: .now)
    }
}
