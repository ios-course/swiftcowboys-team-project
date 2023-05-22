import SwiftUI

/// A view that shows information about the disabled alarm clock.
struct NoAlarmLabelView: View {
    var body: some View {
        Text(noAlarmText)
            .font(.system(size: 20,
                          weight: .bold))
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   maxHeight: 100,
                   alignment: .center)
    }

    private let noAlarmText = "No alarm clock\nJust a sleep analysis"
}

struct NoAlarmLabelView_Previews: PreviewProvider {
    static var previews: some View {
        NoAlarmLabelView()
    }
}
