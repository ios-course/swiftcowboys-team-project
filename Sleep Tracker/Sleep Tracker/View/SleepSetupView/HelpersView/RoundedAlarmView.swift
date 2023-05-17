import SwiftUI

/// A custom button for the alarm clock which, when clicked, change its opacity property with animation.
struct RoundedAlarmView: View {

    /// A boolean value that indicates whether animation is enabled.
    /// When `true` button has no transparency and when `false` button has transparency.
    @Binding var animate: Bool

    var body: some View {
        Image.AppImage.alarmSymbolWhite
            .resizable()
            .frame(width: 20, height: 20)
            .background {
                RoundedRectangle(cornerRadius: 30)
                    .fill(.purple)
                    .frame(width: 70, height: 40)
            }
            .opacity(animate ? 1.0 : 0.5)
            .zIndex(1)
    }
}

struct AlarmButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundedAlarmView(animate: .constant(false))
    }
}
