import SwiftUI

/// A rectangular rounded view with an alarm clock image in the center.
struct RoundedAlarmView: View {
    /// A boolean value that indicates whether the view is opaque.
    /// If `true` view is opaque, otherwise is semi-transparency.
    @Binding var isOpaque: Bool

    var body: some View {
        Image.AppImage.alarmSymbolWhite
            .padding(EdgeInsets(top: 10,
                                leading: 25,
                                bottom: 10,
                                trailing: 25))
            .background(Color.AppScheme.bluePurple)
            .cornerRadius(52)
            .opacity(isOpaque ? 1.0 : 0.5)
    }
}

struct RoundedAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedAlarmView(isOpaque: .constant(true))
    }
}
