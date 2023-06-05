import Foundation.NSDate

extension Date {
    /// A value for hour unit of a date.
    var hour: Int {
        Calendar.current.component(.hour, from: self)
    }

    /// A value for minute unit of a date.
    var minutes: Int {
        Calendar.current.component(.minute, from: self)
    }
}
