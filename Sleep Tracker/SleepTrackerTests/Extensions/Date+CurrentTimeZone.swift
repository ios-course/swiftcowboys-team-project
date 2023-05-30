import Foundation.NSDate

extension Date {
    var toCurrentTimeZone: Date {
        addingTimeInterval(
            TimeInterval(
                -TimeZone.current.secondsFromGMT(for: self)
            )
        )
    }
}
