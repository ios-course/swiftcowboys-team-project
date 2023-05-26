import SwiftUI

/// The setting of the UI element used in the application.
enum AppUIConstant {
    /// A base corner radius.
    static let baseCornerRadius: CGFloat = 10
    /// A corner radius used for rounded alarm view.
    static let alarmCornerRadius: CGFloat = 20
    /// A corner radius used for tab bar.
    static let tabBarCornerRadius: CGFloat = 50
    /// A corner radius used for large elements.
    static let largeCornerRadius: CGFloat = 80

    /// An opacity setting used for the transparent view.
    static let transparent: Double = 0.0
    /// An opacity setting used for the translucent view.
    static let translucent: Double = 0.5
    /// An opacity setting used for the opaque view.
    static let opaque: Double = 1.0

    /// A minimum frame width.
    static let minFrameWidth: CGFloat = 0
    /// A maximum frame height.
    static let maxFrameHeight: CGFloat = 100
}
