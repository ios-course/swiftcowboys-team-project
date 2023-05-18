import SwiftUI

/// A view that display information that the alarm clock is off.
struct NoAlarmLabel: View {
    /// A boolean value that indicates whether the Label is hidden.
    /// When `true` Label is hidden and when `false` Label is visible.
    @Binding var isHidden: Bool

    var body: some View {
        Text("No alarm clock,\njust a sleep analysis")
            .font(.system(size: 20,
                          weight: .bold))
            .opacity(isHidden ? 0.0 : 1.0)
    }
}

struct NoAlarmLabel_Previews: PreviewProvider {
    static var previews: some View {
        NoAlarmLabel(isHidden: .constant(false))
    }
}
