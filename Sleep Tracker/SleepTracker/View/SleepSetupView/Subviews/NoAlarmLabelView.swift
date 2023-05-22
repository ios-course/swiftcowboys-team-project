import SwiftUI

/// A view that shows information about the disabled alarm clock.
struct NoAlarmLabelView: View {
    var body: some View {
        Text("No alarm clock,\njust a sleep analysis")
            .font(.system(size: 20,
                          weight: .bold))
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   maxHeight: 100,
                   alignment: .center)
    }
}

struct NoAlarmLabelView_Previews: PreviewProvider {
    static var previews: some View {
        NoAlarmLabelView()
    }
}
