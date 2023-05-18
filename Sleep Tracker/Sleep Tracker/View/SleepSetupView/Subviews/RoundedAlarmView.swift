import SwiftUI

/// A rectangular rounded view with an alarm clock image in the center.
/// When clicked, change its opacity property with animation.
struct RoundedAlarmView: View {
    /// A variable boolean value that visually changes the rectangular rounded view.
    /// When takes the value `true` rectangular rounded view has no transparency
    /// And when takes the value `false` rectangular rounded view has transparency.
    @Binding var isAnimated: Bool

    var body: some View {
        Image.AppImage.alarmSymbolWhite
            .padding(EdgeInsets(top: 10,
                                leading: 25,
                                bottom: 10,
                                trailing: 25))
            .background(.purple)
            .cornerRadius(30)
            .opacity(isAnimated ? 1.0 : 0.5)
    }
}

struct RoundedAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedAlarmView(isAnimated: .constant(false))
    }
}
