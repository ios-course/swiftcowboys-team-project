import Foundation.NSDate

extension Date {
    /// Date converted to the time zone currently used by the system.
    var toCurrentTimeZone: Date {
        addingTimeInterval(
            TimeInterval(
                -TimeZone.current.secondsFromGMT(for: self)
            )
        )
    }
}
