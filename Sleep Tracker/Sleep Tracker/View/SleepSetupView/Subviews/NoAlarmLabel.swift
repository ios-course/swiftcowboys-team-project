import SwiftUI

/// A view that shows information about the disabled alarm clock.
struct NoAlarmLabel: View {
    /// A boolean value that indicates whether the alarm is animated.
    /// When `true` alarm is animated and when `false` alarm is not animated.
    @Binding var isHidden: Bool

    var body: some View {
        Text("No alarm clock,\njust a sleep analysis")
            .font(.system(size: 20,
                          weight: .bold))
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   maxHeight: 100,
                   alignment: .center)
            .opacity(isHidden ? 0.0 : 1.0)
    }
}

struct NoAlarmLabel_Previews: PreviewProvider {
    static var previews: some View {
        NoAlarmLabel(isHidden: .constant(false))
    }
}
